.class public Lcom/android/volley/toolbox/HttpClientStack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/toolbox/HttpStack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final a:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/volley/toolbox/HttpClientStack;->a:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method static a(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/android/volley/Request;->a()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 151
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown request method."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :pswitch_0
    new-instance p1, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;

    invoke-virtual {p0}, Lcom/android/volley/Request;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;-><init>(Ljava/lang/String;)V

    const-string v0, "Content-Type"

    .line 146
    invoke-virtual {p0}, Lcom/android/volley/Request;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {p1, p0}, Lcom/android/volley/toolbox/HttpClientStack;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V

    return-object p1

    .line 142
    :pswitch_1
    new-instance p1, Lorg/apache/http/client/methods/HttpTrace;

    invoke-virtual {p0}, Lcom/android/volley/Request;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpTrace;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 140
    :pswitch_2
    new-instance p1, Lorg/apache/http/client/methods/HttpOptions;

    invoke-virtual {p0}, Lcom/android/volley/Request;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 138
    :pswitch_3
    new-instance p1, Lorg/apache/http/client/methods/HttpHead;

    invoke-virtual {p0}, Lcom/android/volley/Request;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 122
    :pswitch_4
    new-instance p1, Lorg/apache/http/client/methods/HttpDelete;

    invoke-virtual {p0}, Lcom/android/volley/Request;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 132
    :pswitch_5
    new-instance p1, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {p0}, Lcom/android/volley/Request;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    const-string v0, "Content-Type"

    .line 133
    invoke-virtual {p0}, Lcom/android/volley/Request;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {p1, p0}, Lcom/android/volley/toolbox/HttpClientStack;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V

    return-object p1

    .line 125
    :pswitch_6
    new-instance p1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/android/volley/Request;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v0, "Content-Type"

    .line 126
    invoke-virtual {p0}, Lcom/android/volley/Request;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {p1, p0}, Lcom/android/volley/toolbox/HttpClientStack;->a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V

    return-object p1

    .line 120
    :pswitch_7
    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/android/volley/Request;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 106
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/volley/Request;->l()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 108
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/android/volley/Request;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    .line 110
    invoke-virtual {p0}, Lcom/android/volley/Request;->k()Ljava/lang/String;

    move-result-object p0

    .line 109
    invoke-virtual {v0, v1, p0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance p0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {p0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 113
    invoke-virtual {v0, p0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    return-object v0

    .line 116
    :cond_0
    new-instance p1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/android/volley/Request;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object p1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lcom/android/volley/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 158
    invoke-virtual {p1}, Lcom/android/volley/Request;->p()[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 160
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 161
    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_0
    return-void
.end method

.method private static a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public b(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 79
    invoke-static {p1, p2}, Lcom/android/volley/toolbox/HttpClientStack;->a(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 80
    invoke-static {v0, p2}, Lcom/android/volley/toolbox/HttpClientStack;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 83
    invoke-virtual {p1}, Lcom/android/volley/Request;->h()Ljava/util/Map;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/volley/toolbox/HttpClientStack;->a(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/util/Map;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/HttpClientStack;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 85
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p2

    .line 86
    invoke-virtual {p1}, Lcom/android/volley/Request;->t()I

    move-result p1

    const/16 v1, 0x1388

    .line 89
    invoke-static {p2, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 90
    invoke-static {p2, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 91
    iget-object p1, p0, Lcom/android/volley/toolbox/HttpClientStack;->a:Lorg/apache/http/client/HttpClient;

    invoke-interface {p1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method
