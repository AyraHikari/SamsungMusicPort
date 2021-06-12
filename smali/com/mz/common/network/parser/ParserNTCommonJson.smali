.class public abstract Lcom/mz/common/network/parser/ParserNTCommonJson;
.super Lcom/mz/common/network/parser/ParserNTCommon;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/mz/common/network/parser/ParserNTCommon;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 135
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string p1, "item : don\'t has."

    .line 137
    invoke-static {p1}, Lcom/mz/common/MzLog;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "item : is null"

    .line 140
    invoke-static {p1}, Lcom/mz/common/MzLog;->b(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method protected a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 0

    .line 24
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, " : don\'t has"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected b(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 0

    .line 34
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, " : is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, ""

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/mz/common/network/parser/ParserNTCommonJson;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/mz/common/network/parser/ParserNTCommonJson;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected d(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/mz/common/network/parser/ParserNTCommonJson;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/mz/common/network/parser/ParserNTCommonJson;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method protected e(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/mz/common/network/parser/ParserNTCommonJson;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/mz/common/network/parser/ParserNTCommonJson;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/mz/common/network/parser/ParserNTCommonJson;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/mz/common/network/parser/ParserNTCommonJson;->b(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
