.class public Lcom/mz/common/network/parser/ParserSSP;
.super Lcom/mz/common/network/parser/ParserNTCommonResponse;
.source "SourceFile"


# instance fields
.field private a:Lcom/mz/common/network/data/DataNTSSP;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/mz/common/network/parser/ParserNTCommonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSP;->a:Lcom/mz/common/network/data/DataNTSSP;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/io/InputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSP;->a:Lcom/mz/common/network/data/DataNTSSP;

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/mz/common/network/data/DataNTSSP;

    invoke-direct {p1}, Lcom/mz/common/network/data/DataNTSSP;-><init>()V

    iput-object p1, p0, Lcom/mz/common/network/parser/ParserSSP;->a:Lcom/mz/common/network/data/DataNTSSP;

    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSP;->a:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->a()V

    .line 23
    :goto_0
    invoke-static {p2}, Lcom/mz/common/network/parser/ParserSSP;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "jsonToString : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 25
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSP;->a:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {p0, p2, p1}, Lcom/mz/common/network/parser/ParserSSP;->a(Lorg/json/JSONObject;Lcom/mz/common/network/data/DataNTCommon;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 28
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSP;->a:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->l()Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 29
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSP;->a:Lcom/mz/common/network/data/DataNTSSP;

    const-string v0, "ad_pd_attr"

    invoke-virtual {p0, p2, v0}, Lcom/mz/common/network/parser/ParserSSP;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTSSP;->a(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSP;->a:Lcom/mz/common/network/data/DataNTSSP;

    const-string v0, "code_type"

    invoke-virtual {p0, p2, v0}, Lcom/mz/common/network/parser/ParserSSP;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTSSP;->b(Ljava/lang/String;)V

    .line 31
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSP;->a:Lcom/mz/common/network/data/DataNTSSP;

    const-string v0, "img_path"

    invoke-virtual {p0, p2, v0}, Lcom/mz/common/network/parser/ParserSSP;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTSSP;->c(Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSP;->a:Lcom/mz/common/network/data/DataNTSSP;

    const-string v0, "landing_url"

    invoke-virtual {p0, p2, v0}, Lcom/mz/common/network/parser/ParserSSP;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTSSP;->d(Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSP;->a:Lcom/mz/common/network/data/DataNTSSP;

    const-string v0, "width"

    invoke-virtual {p0, p2, v0}, Lcom/mz/common/network/parser/ParserSSP;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTSSP;->e(Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSP;->a:Lcom/mz/common/network/data/DataNTSSP;

    const-string v0, "height"

    invoke-virtual {p0, p2, v0}, Lcom/mz/common/network/parser/ParserSSP;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTSSP;->f(Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSP;->a:Lcom/mz/common/network/data/DataNTSSP;

    const-string v0, "ssp_imp"

    invoke-virtual {p0, p2, v0}, Lcom/mz/common/network/parser/ParserSSP;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTSSP;->g(Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSP;->a:Lcom/mz/common/network/data/DataNTSSP;

    const-string v0, "dsp_imp"

    invoke-virtual {p0, p2, v0}, Lcom/mz/common/network/parser/ParserSSP;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTSSP;->h(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSP;->a:Lcom/mz/common/network/data/DataNTSSP;

    const-string v0, "ssp_click"

    invoke-virtual {p0, p2, v0}, Lcom/mz/common/network/parser/ParserSSP;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTSSP;->k(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSP;->a:Lcom/mz/common/network/data/DataNTSSP;

    sget-object v0, Lcom/mz/common/network/data/DataNTSSP$SSPCLICK;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTSSP;->p(Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSP;->a:Lcom/mz/common/network/data/DataNTSSP;

    const-string v0, "dsp_click"

    invoke-virtual {p0, p2, v0}, Lcom/mz/common/network/parser/ParserSSP;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTSSP;->l(Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSP;->a:Lcom/mz/common/network/data/DataNTSSP;

    const-string v0, "html"

    invoke-virtual {p0, p2, v0}, Lcom/mz/common/network/parser/ParserSSP;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTSSP;->m(Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSP;->a:Lcom/mz/common/network/data/DataNTSSP;

    const-string v0, "adm"

    invoke-virtual {p0, p2, v0}, Lcom/mz/common/network/parser/ParserSSP;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTSSP;->o(Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSP;->a:Lcom/mz/common/network/data/DataNTSSP;

    const-string v0, "bg_color"

    invoke-virtual {p0, p2, v0}, Lcom/mz/common/network/parser/ParserSSP;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mz/common/network/data/DataNTSSP;->n(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
