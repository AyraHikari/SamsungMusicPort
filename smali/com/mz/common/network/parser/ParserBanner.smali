.class public Lcom/mz/common/network/parser/ParserBanner;
.super Lcom/mz/common/network/parser/ParserNTCommonResponse;
.source "SourceFile"


# instance fields
.field private a:Lcom/mz/common/network/data/DataNTBanner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/mz/common/network/parser/ParserNTCommonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserBanner;->a:Lcom/mz/common/network/data/DataNTBanner;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/io/InputStream;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserBanner;->a:Lcom/mz/common/network/data/DataNTBanner;

    if-nez p1, :cond_0

    .line 23
    new-instance p1, Lcom/mz/common/network/data/DataNTBanner;

    invoke-direct {p1}, Lcom/mz/common/network/data/DataNTBanner;-><init>()V

    iput-object p1, p0, Lcom/mz/common/network/parser/ParserBanner;->a:Lcom/mz/common/network/data/DataNTBanner;

    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserBanner;->a:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTBanner;->a()V

    .line 27
    :goto_0
    invoke-static {p2}, Lcom/mz/common/network/parser/ParserBanner;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "jsonToString : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mz/common/MzLog;->a(Ljava/lang/String;)V

    .line 29
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "adsinfo"

    .line 30
    invoke-virtual {p0, p2, p1}, Lcom/mz/common/network/parser/ParserBanner;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const-string v0, ""

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 32
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserBanner;->a:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {p0, p1, v0}, Lcom/mz/common/network/parser/ParserBanner;->a(Lorg/json/JSONObject;Lcom/mz/common/network/data/DataNTCommon;)Z

    .line 33
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserBanner;->a:Lcom/mz/common/network/data/DataNTBanner;

    const-string v1, "rotatetime"

    invoke-virtual {p0, p1, v1}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTBanner;->a(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserBanner;->a:Lcom/mz/common/network/data/DataNTBanner;

    const-string v1, "request_id"

    invoke-virtual {p0, p1, v1}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTBanner;->b(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserBanner;->a:Lcom/mz/common/network/data/DataNTBanner;

    const-string v1, "ad_type"

    invoke-virtual {p0, p1, v1}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTBanner;->c(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserBanner;->a:Lcom/mz/common/network/data/DataNTBanner;

    const-string v1, "use_ssp"

    invoke-virtual {p0, p1, v1}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTBanner;->h(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserBanner;->a:Lcom/mz/common/network/data/DataNTBanner;

    const-string v1, "product_type"

    invoke-virtual {p0, p1, v1}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTBanner;->d(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserBanner;->a:Lcom/mz/common/network/data/DataNTBanner;

    const-string v1, "product_attr"

    invoke-virtual {p0, p1, v1}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTBanner;->e(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserBanner;->a:Lcom/mz/common/network/data/DataNTBanner;

    const-string v1, "product"

    invoke-virtual {p0, p1, v1}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTBanner;->f(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserBanner;->a:Lcom/mz/common/network/data/DataNTBanner;

    const-string v1, "ad_count"

    invoke-virtual {p0, p1, v1}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTBanner;->g(Ljava/lang/String;)V

    const-string v0, "ad"

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/mz/common/network/parser/ParserBanner;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 42
    new-instance v0, Lcom/mz/common/network/data/DataListBannerAD;

    invoke-direct {v0}, Lcom/mz/common/network/data/DataListBannerAD;-><init>()V

    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    :goto_1
    if-lt p2, v1, :cond_1

    goto/16 :goto_2

    .line 48
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/mz/common/network/parser/ParserBanner;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 49
    new-instance v3, Lcom/mz/common/network/data/DataBannerAD;

    invoke-direct {v3}, Lcom/mz/common/network/data/DataBannerAD;-><init>()V

    const-string v4, "cmp_no"

    .line 50
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataBannerAD;->a(Ljava/lang/String;)V

    const-string v4, "ad_group_no"

    .line 51
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataBannerAD;->b(Ljava/lang/String;)V

    const-string v4, "ad_no"

    .line 52
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataBannerAD;->c(Ljava/lang/String;)V

    const-string v4, "img_path"

    .line 53
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataBannerAD;->d(Ljava/lang/String;)V

    const-string v4, "img_name"

    .line 54
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataBannerAD;->e(Ljava/lang/String;)V

    const-string v4, "click_option"

    .line 55
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataBannerAD;->f(Ljava/lang/String;)V

    const-string v4, "click_action_type"

    .line 56
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataBannerAD;->g(Ljava/lang/String;)V

    const-string v4, "landing_url"

    .line 57
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataBannerAD;->h(Ljava/lang/String;)V

    const-string v4, "bg_color"

    .line 58
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataBannerAD;->i(Ljava/lang/String;)V

    const-string v4, "width"

    .line 59
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataBannerAD;->j(Ljava/lang/String;)V

    const-string v4, "height"

    .line 60
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataBannerAD;->k(Ljava/lang/String;)V

    const-string v4, "end_datetime"

    .line 61
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataBannerAD;->l(Ljava/lang/String;)V

    const-string v4, "impression_api"

    .line 62
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataBannerAD;->m(Ljava/lang/String;)V

    const-string v4, "click_api"

    .line 63
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataBannerAD;->n(Ljava/lang/String;)V

    const-string v4, "click_tracking_api"

    .line 64
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataBannerAD;->o(Ljava/lang/String;)V

    const-string v4, "html"

    .line 65
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserBanner;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mz/common/network/data/DataBannerAD;->p(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v3}, Lcom/mz/common/network/data/DataListBannerAD;->a(Lcom/mz/common/network/data/IData;)I

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_1

    .line 70
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserBanner;->a:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTBanner;->a(Lcom/mz/common/network/data/DataListBannerAD;)V

    .line 71
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserBanner;->a:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTBanner;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 74
    :cond_3
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserBanner;->a:Lcom/mz/common/network/data/DataNTBanner;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTBanner;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->b(Ljava/lang/String;)V

    return p2
.end method
