.class public Lcom/android/volley/toolbox/JsonObjectRequest;
.super Lcom/android/volley/toolbox/JsonRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/toolbox/JsonRequest<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 6
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/android/volley/Response$ErrorListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/android/volley/Response$Listener<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p3, 0x0

    :goto_0
    move-object v3, p3

    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :goto_1
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 51
    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 81
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/volley/NetworkResponse;->b:[B

    iget-object v2, p1, Lcom/android/volley/NetworkResponse;->c:Ljava/util/Map;

    const-string v3, "utf-8"

    .line 84
    invoke-static {v2, v3}, Lcom/android/volley/toolbox/HttpHeaderParser;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 85
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->a(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object p1

    .line 85
    invoke-static {v1, p1}, Lcom/android/volley/Response;->a(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 90
    new-instance v0, Lcom/android/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/android/volley/Response;->a(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    .line 88
    new-instance v0, Lcom/android/volley/ParseError;

    invoke-direct {v0, p1}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/android/volley/Response;->a(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object p1

    return-object p1
.end method
