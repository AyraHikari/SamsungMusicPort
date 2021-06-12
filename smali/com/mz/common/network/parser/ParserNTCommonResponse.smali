.class public abstract Lcom/mz/common/network/parser/ParserNTCommonResponse;
.super Lcom/mz/common/network/parser/ParserNTCommonJson;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/mz/common/network/parser/ParserNTCommonJson;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;Lcom/mz/common/network/data/DataNTCommon;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 21
    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTCommon;->k()V

    if-eqz p1, :cond_0

    const-string v0, "version"

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/mz/common/network/parser/ParserNTCommonResponse;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mz/common/network/data/DataNTCommon;->i(Ljava/lang/String;)V

    const-string v0, "error_code"

    .line 24
    invoke-virtual {p0, p1, v0}, Lcom/mz/common/network/parser/ParserNTCommonResponse;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mz/common/network/data/DataNTCommon;->j(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
