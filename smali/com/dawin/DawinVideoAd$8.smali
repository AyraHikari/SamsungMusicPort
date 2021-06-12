.class Lcom/dawin/DawinVideoAd$8;
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

    iput-object p1, p0, Lcom/dawin/DawinVideoAd$8;->a:Lcom/dawin/DawinVideoAd;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_4

    const/16 v0, 0x67

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbb8

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$8;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->j(Lcom/dawin/DawinVideoAd;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$8;->a:Lcom/dawin/DawinVideoAd;

    invoke-virtual {p1}, Lcom/dawin/DawinVideoAd;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$8;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->i(Lcom/dawin/DawinVideoAd;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$8;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->h(Lcom/dawin/DawinVideoAd;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$8;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dawin/objects/AdInfos;->getExtension()Lcom/dawin/http/parser/ExtensionInfoParser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dawin/http/parser/ExtensionInfoParser;->getIsAvailable()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$8;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$8;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dawin/objects/b;->setVisibility(I)V

    :cond_5
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$8;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->g(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$8;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->g(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/dawin/objects/b;->setVisibility(I)V

    :cond_6
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$8;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/dawin/DawinVideoAd$8;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {p1}, Lcom/dawin/DawinVideoAd;->b(Lcom/dawin/DawinVideoAd;)Lcom/dawin/DawinVideoAd$DawinVideoAdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/dawin/DawinVideoAd$8;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v0}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/dawin/DawinVideoAd$DawinVideoAdListener;->onAdSkippableStateChange(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/dawin/DawinVideoAd$8;->a:Lcom/dawin/DawinVideoAd;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;Z)Z

    :goto_0
    return-void
.end method
