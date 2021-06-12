.class Lcom/dawin/DawinVideoAd$12;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dawin/DawinVideoAd;->e()V
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

    iput-object p1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->u(Lcom/dawin/DawinVideoAd;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/a/a;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->v(Lcom/dawin/DawinVideoAd;)I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/a/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1, v0}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;Z)Z

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/objects/AdInfos;->getChargeTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/objects/AdInfos;->getChargeTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->o(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v1

    const/16 v2, 0x76c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dawin/objects/AdInfos;->getChargeTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&dawin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "A01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/objects/AdInfos;->getExtension()Lcom/dawin/http/parser/ExtensionInfoParser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/http/parser/ExtensionInfoParser;->getIsAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;

    move-result-object v1

    iget-object v1, v1, Lcom/dawin/objects/b;->b:Lcom/dawin/objects/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;

    move-result-object v1

    iget-object v1, v1, Lcom/dawin/objects/b;->b:Lcom/dawin/objects/a;

    invoke-virtual {v1}, Lcom/dawin/objects/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/objects/b;->a()V

    :cond_1
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->f(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->w(Lcom/dawin/DawinVideoAd;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/a/a;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/a/a;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dawin/objects/AdInfos;->getExtension()Lcom/dawin/http/parser/ExtensionInfoParser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dawin/http/parser/ExtensionInfoParser;->getSkipShowTime()I

    move-result v2

    if-le v1, v2, :cond_2

    const-string v1, "SKIP BUTTON DISPLAY"

    invoke-static {v1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->x(Lcom/dawin/DawinVideoAd;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/a/a;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->y(Lcom/dawin/DawinVideoAd;)I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/a/a;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->z(Lcom/dawin/DawinVideoAd;)I

    move-result v2

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/a/a;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->A(Lcom/dawin/DawinVideoAd;)I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->o(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v1

    const/16 v2, 0x44c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/dawin/objects/AdInfos;->getQuarterTag(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&dawin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "A01"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1, v0}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;I)I

    goto/16 :goto_3

    :cond_4
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->y(Lcom/dawin/DawinVideoAd;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v0, :cond_6

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/a/a;->getCurrentPosition()I

    move-result v1

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->A(Lcom/dawin/DawinVideoAd;)I

    move-result v3

    if-le v1, v3, :cond_6

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/a/a;->getCurrentPosition()I

    move-result v1

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->B(Lcom/dawin/DawinVideoAd;)I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->o(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v1

    const/16 v3, 0x4b0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v5}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/dawin/objects/AdInfos;->getQuarterTag(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&dawin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "A01"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    :goto_2
    invoke-static {v1, v2}, Lcom/dawin/DawinVideoAd;->c(Lcom/dawin/DawinVideoAd;I)I

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->y(Lcom/dawin/DawinVideoAd;)I

    move-result v1

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/a/a;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->B(Lcom/dawin/DawinVideoAd;)I

    move-result v2

    if-le v1, v2, :cond_8

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v1

    const/4 v2, 0x3

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->o(Lcom/dawin/DawinVideoAd;)Lcom/dawin/http/a;

    move-result-object v1

    const/16 v3, 0x514

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v5}, Lcom/dawin/DawinVideoAd;->e(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/AdInfos;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/dawin/objects/AdInfos;->getQuarterTag(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&dawin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "A01"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/dawin/http/a;->a(ILjava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->g(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->g(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/objects/b;->getVisibility()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->g(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;

    move-result-object v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dawin/a/a;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dawin/objects/b;->setSkipDescriptionTime(I)V

    :cond_9
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->r(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->r(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dawin/objects/b;->getVisibility()I

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->r(Lcom/dawin/DawinVideoAd;)Lcom/dawin/objects/b;

    move-result-object v1

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dawin/a/a;->getCurrentPosition()I

    move-result v2

    iget-object v3, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dawin/a/a;->getDuration()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/dawin/objects/b;->b(II)V

    :cond_a
    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->C(Lcom/dawin/DawinVideoAd;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->C(Lcom/dawin/DawinVideoAd;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f

    iget-object v1, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v1}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->C(Lcom/dawin/DawinVideoAd;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    :try_start_3
    iget-object v3, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v3}, Lcom/dawin/DawinVideoAd;->C(Lcom/dawin/DawinVideoAd;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dawin/objects/b;

    iget v4, v3, Lcom/dawin/objects/b;->c:I

    iget-object v5, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v5}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dawin/a/a;->getCurrentPosition()I

    move-result v5

    if-gt v4, v5, :cond_b

    invoke-virtual {v3}, Lcom/dawin/objects/b;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_b

    iget-boolean v4, v3, Lcom/dawin/objects/b;->e:Z

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->D(Lcom/dawin/DawinVideoAd;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Lcom/dawin/DawinVideoAd$12$1;

    invoke-direct {v5, p0, v3}, Lcom/dawin/DawinVideoAd$12$1;-><init>(Lcom/dawin/DawinVideoAd$12;Lcom/dawin/objects/b;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_b
    iget v4, v3, Lcom/dawin/objects/b;->d:I

    iget-object v5, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v5}, Lcom/dawin/DawinVideoAd;->a(Lcom/dawin/DawinVideoAd;)Lcom/dawin/a/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dawin/a/a;->getCurrentPosition()I

    move-result v5

    if-gt v4, v5, :cond_c

    iget-object v4, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v4}, Lcom/dawin/DawinVideoAd;->D(Lcom/dawin/DawinVideoAd;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Lcom/dawin/DawinVideoAd$12$2;

    invoke-direct {v5, p0, v3}, Lcom/dawin/DawinVideoAd$12$2;-><init>(Lcom/dawin/DawinVideoAd$12;Lcom/dawin/objects/b;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    :goto_6
    iget-object v2, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->C(Lcom/dawin/DawinVideoAd;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->C(Lcom/dawin/DawinVideoAd;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dawin/objects/b;

    iget-boolean v2, v2, Lcom/dawin/objects/b;->e:Z

    if-ne v2, v0, :cond_e

    iget-object v2, p0, Lcom/dawin/DawinVideoAd$12;->a:Lcom/dawin/DawinVideoAd;

    invoke-static {v2}, Lcom/dawin/DawinVideoAd;->C(Lcom/dawin/DawinVideoAd;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_f
    return-void
.end method
