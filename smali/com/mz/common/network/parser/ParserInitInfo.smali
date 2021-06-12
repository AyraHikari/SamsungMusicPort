.class public Lcom/mz/common/network/parser/ParserInitInfo;
.super Lcom/mz/common/network/parser/ParserNTCommonResponse;
.source "SourceFile"


# instance fields
.field private a:Lcom/mz/common/network/data/DataNTInitInfo;


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

    .line 42
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserInitInfo;->a:Lcom/mz/common/network/data/DataNTInitInfo;

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
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserInitInfo;->a:Lcom/mz/common/network/data/DataNTInitInfo;

    if-nez p1, :cond_0

    .line 19
    new-instance p1, Lcom/mz/common/network/data/DataNTInitInfo;

    invoke-direct {p1}, Lcom/mz/common/network/data/DataNTInitInfo;-><init>()V

    iput-object p1, p0, Lcom/mz/common/network/parser/ParserInitInfo;->a:Lcom/mz/common/network/data/DataNTInitInfo;

    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserInitInfo;->a:Lcom/mz/common/network/data/DataNTInitInfo;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTInitInfo;->a()V

    .line 23
    :goto_0
    invoke-static {p2}, Lcom/mz/common/network/parser/ParserInitInfo;->a(Ljava/io/InputStream;)Ljava/lang/String;

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

    const-string p1, "init_info"

    .line 26
    invoke-virtual {p0, p2, p1}, Lcom/mz/common/network/parser/ParserInitInfo;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 28
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserInitInfo;->a:Lcom/mz/common/network/data/DataNTInitInfo;

    const-string v0, "version"

    invoke-virtual {p0, p1, v0}, Lcom/mz/common/network/parser/ParserInitInfo;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mz/common/network/data/DataNTInitInfo;->a(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserInitInfo;->a:Lcom/mz/common/network/data/DataNTInitInfo;

    const-string v0, "pkg_target_use"

    invoke-virtual {p0, p1, v0}, Lcom/mz/common/network/parser/ParserInitInfo;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mz/common/network/data/DataNTInitInfo;->b(Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserInitInfo;->a:Lcom/mz/common/network/data/DataNTInitInfo;

    const-string v0, "pkg_target_info_ver"

    invoke-virtual {p0, p1, v0}, Lcom/mz/common/network/parser/ParserInitInfo;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mz/common/network/data/DataNTInitInfo;->c(Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserInitInfo;->a:Lcom/mz/common/network/data/DataNTInitInfo;

    const-string v0, "pkg_target_period"

    invoke-virtual {p0, p1, v0}, Lcom/mz/common/network/parser/ParserInitInfo;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mz/common/network/data/DataNTInitInfo;->d(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserInitInfo;->a:Lcom/mz/common/network/data/DataNTInitInfo;

    const-string v0, "conf_period"

    invoke-virtual {p0, p1, v0}, Lcom/mz/common/network/parser/ParserInitInfo;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mz/common/network/data/DataNTInitInfo;->e(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserInitInfo;->a:Lcom/mz/common/network/data/DataNTInitInfo;

    const-string v0, "ab_interval"

    invoke-virtual {p0, p1, v0}, Lcom/mz/common/network/parser/ParserInitInfo;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mz/common/network/data/DataNTInitInfo;->f(Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserInitInfo;->a:Lcom/mz/common/network/data/DataNTInitInfo;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTInitInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->b(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
