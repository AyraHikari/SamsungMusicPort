.class public Lcom/mz/common/network/parser/ParserEnd;
.super Lcom/mz/common/network/parser/ParserNTCommonResponse;
.source "SourceFile"


# instance fields
.field private a:Lcom/mz/common/network/data/DataNTEnd;


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

    .line 84
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserEnd;->a:Lcom/mz/common/network/data/DataNTEnd;

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
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserEnd;->a:Lcom/mz/common/network/data/DataNTEnd;

    if-nez p1, :cond_0

    .line 23
    new-instance p1, Lcom/mz/common/network/data/DataNTEnd;

    invoke-direct {p1}, Lcom/mz/common/network/data/DataNTEnd;-><init>()V

    iput-object p1, p0, Lcom/mz/common/network/parser/ParserEnd;->a:Lcom/mz/common/network/data/DataNTEnd;

    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserEnd;->a:Lcom/mz/common/network/data/DataNTEnd;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTEnd;->a()V

    .line 27
    :goto_0
    invoke-static {p2}, Lcom/mz/common/network/parser/ParserEnd;->a(Ljava/io/InputStream;)Ljava/lang/String;

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
    invoke-virtual {p0, p2, p1}, Lcom/mz/common/network/parser/ParserEnd;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const-string v0, ""

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 32
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserEnd;->a:Lcom/mz/common/network/data/DataNTEnd;

    invoke-virtual {p0, p1, v0}, Lcom/mz/common/network/parser/ParserEnd;->a(Lorg/json/JSONObject;Lcom/mz/common/network/data/DataNTCommon;)Z

    .line 34
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserEnd;->a:Lcom/mz/common/network/data/DataNTEnd;

    const-string v1, "close_location"

    invoke-virtual {p0, p1, v1}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTEnd;->h(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserEnd;->a:Lcom/mz/common/network/data/DataNTEnd;

    const-string v1, "logo_location"

    invoke-virtual {p0, p1, v1}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTEnd;->k(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserEnd;->a:Lcom/mz/common/network/data/DataNTEnd;

    const-string v1, "response_time"

    invoke-virtual {p0, p1, v1}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTEnd;->l(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserEnd;->a:Lcom/mz/common/network/data/DataNTEnd;

    const-string v1, "request_id"

    invoke-virtual {p0, p1, v1}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTEnd;->a(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserEnd;->a:Lcom/mz/common/network/data/DataNTEnd;

    const-string v1, "ad_type"

    invoke-virtual {p0, p1, v1}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTEnd;->b(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserEnd;->a:Lcom/mz/common/network/data/DataNTEnd;

    const-string v1, "use_ssp"

    invoke-virtual {p0, p1, v1}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTEnd;->c(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserEnd;->a:Lcom/mz/common/network/data/DataNTEnd;

    const-string v1, "product_type"

    invoke-virtual {p0, p1, v1}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTEnd;->d(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserEnd;->a:Lcom/mz/common/network/data/DataNTEnd;

    const-string v1, "product_attr"

    invoke-virtual {p0, p1, v1}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTEnd;->e(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserEnd;->a:Lcom/mz/common/network/data/DataNTEnd;

    const-string v1, "product"

    invoke-virtual {p0, p1, v1}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTEnd;->f(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserEnd;->a:Lcom/mz/common/network/data/DataNTEnd;

    const-string v1, "ad_count"

    invoke-virtual {p0, p1, v1}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataNTEnd;->g(Ljava/lang/String;)V

    const-string v0, "ad"

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/mz/common/network/parser/ParserEnd;->e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 46
    new-instance v0, Lcom/mz/common/network/data/DataListEndAD;

    invoke-direct {v0}, Lcom/mz/common/network/data/DataListEndAD;-><init>()V

    if-eqz p1, :cond_2

    .line 48
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    :goto_1
    if-lt p2, v1, :cond_1

    goto/16 :goto_2

    .line 52
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/mz/common/network/parser/ParserEnd;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 53
    new-instance v3, Lcom/mz/common/network/data/DataIEndAD;

    invoke-direct {v3}, Lcom/mz/common/network/data/DataIEndAD;-><init>()V

    const-string v4, "cmp_no"

    .line 54
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataIEndAD;->b(Ljava/lang/String;)V

    const-string v4, "ad_group_no"

    .line 55
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataIEndAD;->c(Ljava/lang/String;)V

    const-string v4, "ad_no"

    .line 56
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataIEndAD;->d(Ljava/lang/String;)V

    const-string v4, "img_path"

    .line 57
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataIEndAD;->e(Ljava/lang/String;)V

    const-string v4, "img_name"

    .line 58
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataIEndAD;->f(Ljava/lang/String;)V

    const-string v4, "click_option"

    .line 59
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataIEndAD;->g(Ljava/lang/String;)V

    const-string v4, "click_action_type"

    .line 60
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataIEndAD;->h(Ljava/lang/String;)V

    const-string v4, "landing_url"

    .line 61
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataIEndAD;->i(Ljava/lang/String;)V

    const-string v4, "bg_color"

    .line 62
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataIEndAD;->j(Ljava/lang/String;)V

    const-string v4, "width"

    .line 63
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataIEndAD;->k(Ljava/lang/String;)V

    const-string v4, "height"

    .line 64
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataIEndAD;->l(Ljava/lang/String;)V

    const-string v4, "end_datetime"

    .line 65
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataIEndAD;->m(Ljava/lang/String;)V

    const-string v4, "impression_api"

    .line 66
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataIEndAD;->n(Ljava/lang/String;)V

    const-string v4, "click_api"

    .line 67
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataIEndAD;->o(Ljava/lang/String;)V

    const-string v4, "click_tracking_api"

    .line 68
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mz/common/network/data/DataIEndAD;->p(Ljava/lang/String;)V

    const-string v4, "html"

    .line 69
    invoke-virtual {p0, v2, v4}, Lcom/mz/common/network/parser/ParserEnd;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mz/common/network/data/DataIEndAD;->q(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v3}, Lcom/mz/common/network/data/DataListEndAD;->a(Lcom/mz/common/network/data/IData;)I

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_1

    .line 74
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserEnd;->a:Lcom/mz/common/network/data/DataNTEnd;

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTEnd;->a(Lcom/mz/common/network/data/DataListEndAD;)V

    .line 75
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserEnd;->a:Lcom/mz/common/network/data/DataNTEnd;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTEnd;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 78
    :cond_3
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserEnd;->a:Lcom/mz/common/network/data/DataNTEnd;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTEnd;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->b(Ljava/lang/String;)V

    return p2
.end method
