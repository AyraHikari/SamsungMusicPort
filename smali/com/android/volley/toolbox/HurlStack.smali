.class public Lcom/android/volley/toolbox/HurlStack;
.super Lcom/android/volley/toolbox/BaseHttpStack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/HurlStack$UrlConnectionInputStream;,
        Lcom/android/volley/toolbox/HurlStack$UrlRewriter;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/volley/toolbox/HurlStack$UrlRewriter;

.field private final b:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0}, Lcom/android/volley/toolbox/HurlStack;-><init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/HurlStack;-><init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/volley/toolbox/BaseHttpStack;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/volley/toolbox/HurlStack;->a:Lcom/android/volley/toolbox/HurlStack$UrlRewriter;

    .line 69
    iput-object p2, p0, Lcom/android/volley/toolbox/HurlStack;->b:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method static synthetic a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/android/volley/toolbox/HurlStack;->b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Lcom/android/volley/Request<",
            "*>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/HurlStack;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 209
    invoke-virtual {p2}, Lcom/android/volley/Request;->t()I

    move-result p2

    .line 210
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 211
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p2, 0x0

    .line 212
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 p2, 0x1

    .line 213
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string p2, "https"

    .line 216
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/volley/toolbox/HurlStack;->b:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p1, :cond_0

    .line 217
    move-object p1, v0

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object p2, p0, Lcom/android/volley/toolbox/HurlStack;->b:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    return-object v0
.end method

.method static a(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/android/volley/Header;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 125
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 129
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 130
    new-instance v4, Lcom/android/volley/Header;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/android/volley/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static a(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 228
    invoke-virtual {p1}, Lcom/android/volley/Request;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 269
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown method type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string v0, "PATCH"

    .line 265
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 266
    invoke-static {p0, p1}, Lcom/android/volley/toolbox/HurlStack;->b(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "TRACE"

    .line 262
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "OPTIONS"

    .line 259
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "HEAD"

    .line 256
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "DELETE"

    .line 245
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "PUT"

    .line 252
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 253
    invoke-static {p0, p1}, Lcom/android/volley/toolbox/HurlStack;->b(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    goto :goto_0

    :pswitch_6
    const-string v0, "POST"

    .line 248
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 249
    invoke-static {p0, p1}, Lcom/android/volley/toolbox/HurlStack;->b(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    goto :goto_0

    :pswitch_7
    const-string p1, "GET"

    .line 242
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :pswitch_8
    invoke-virtual {p1}, Lcom/android/volley/Request;->l()[B

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "POST"

    .line 235
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 236
    invoke-static {p0, p1, v0}, Lcom/android/volley/toolbox/HurlStack;->a(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;[B)V

    :cond_0
    :goto_0
    return-void

    nop

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

.method private static a(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/android/volley/Request<",
            "*>;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 286
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 288
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Content-Type"

    .line 290
    invoke-virtual {p1}, Lcom/android/volley/Request;->o()Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-virtual {p0, v0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_0
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 293
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 294
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    return-void
.end method

.method private static a(II)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 p0, 0x64

    if-gt p0, p1, :cond_0

    const/16 p0, 0xc8

    if-lt p1, p0, :cond_1

    :cond_0
    const/16 p0, 0xcc

    if-eq p1, p0, :cond_1

    const/16 p0, 0x130

    if-eq p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 1

    .line 180
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static b(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/android/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 275
    invoke-virtual {p1}, Lcom/android/volley/Request;->p()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-static {p0, p1, v0}, Lcom/android/volley/toolbox/HurlStack;->a(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;[B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/Request;Ljava/util/Map;)Lcom/android/volley/toolbox/HttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/volley/toolbox/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .line 75
    invoke-virtual {p1}, Lcom/android/volley/Request;->c()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 77
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 79
    invoke-virtual {p1}, Lcom/android/volley/Request;->h()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 80
    iget-object p2, p0, Lcom/android/volley/toolbox/HurlStack;->a:Lcom/android/volley/toolbox/HurlStack$UrlRewriter;

    if-eqz p2, :cond_1

    .line 81
    iget-object p2, p0, Lcom/android/volley/toolbox/HurlStack;->a:Lcom/android/volley/toolbox/HurlStack$UrlRewriter;

    invoke-interface {p2, v0}, Lcom/android/volley/toolbox/HurlStack$UrlRewriter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URL blocked by rewriter: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move-object p2, v0

    .line 87
    :goto_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0, v0, p1}, Lcom/android/volley/toolbox/HurlStack;->a(Ljava/net/URL;Lcom/android/volley/Request;)Ljava/net/HttpURLConnection;

    move-result-object p2

    const/4 v0, 0x0

    .line 91
    :try_start_0
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 92
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 94
    :cond_2
    invoke-static {p2, p1}, Lcom/android/volley/toolbox/HurlStack;->a(Ljava/net/HttpURLConnection;Lcom/android/volley/Request;)V

    .line 96
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 103
    invoke-virtual {p1}, Lcom/android/volley/Request;->a()I

    move-result p1

    invoke-static {p1, v1}, Lcom/android/volley/toolbox/HurlStack;->a(II)Z

    move-result p1

    if-nez p1, :cond_3

    .line 104
    new-instance p1, Lcom/android/volley/toolbox/HttpResponse;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/android/volley/toolbox/HurlStack;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/android/volley/toolbox/HttpResponse;-><init>(ILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :cond_3
    const/4 v0, 0x1

    .line 110
    :try_start_1
    new-instance p1, Lcom/android/volley/toolbox/HttpResponse;

    .line 112
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/android/volley/toolbox/HurlStack;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 113
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    new-instance v4, Lcom/android/volley/toolbox/HurlStack$UrlConnectionInputStream;

    invoke-direct {v4, p2}, Lcom/android/volley/toolbox/HurlStack$UrlConnectionInputStream;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/android/volley/toolbox/HttpResponse;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-object p1

    .line 100
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    if-nez v0, :cond_5

    .line 117
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw p1
.end method

.method protected a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 194
    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-object p1
.end method
