.class public Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientUrlRouterInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/network/transport/BasicTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartClientUrlRouterInterceptor"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientUrlRouterInterceptor;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 110
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a()V

    .line 112
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object p1

    const-string v0, "startclient"

    .line 114
    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->a()Lokhttp3/Request;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientUrlRouterInterceptor;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientUrlRouterInterceptor;->a:Landroid/content/Context;

    .line 89
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->a()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientUrlRouterInterceptor;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientUrlRouterInterceptor;->b:Ljava/lang/String;

    const-string v2, "StartClientUrlRouterInterceptor"

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intercept. url - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientUrlRouterInterceptor;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientUrlRouterInterceptor;->b:Ljava/lang/String;

    invoke-static {v2}, Lokhttp3/HttpUrl;->f(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 96
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->g()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->q()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->c()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Lokhttp3/Request;->e()Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->a()Lokhttp3/Request;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 103
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    :cond_1
    :goto_0
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->a(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
