.class public Lcom/samsung/android/app/music/network/interceptor/MusicServerRouterInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final a:Ljava/lang/String; = "MusicServerRouterInterceptor"


# instance fields
.field private b:Lcom/samsung/android/app/music/network/init/StartClientProvider;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/init/StartClientProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerRouterInterceptor;->b:Lcom/samsung/android/app/music/network/init/StartClientProvider;

    return-void
.end method

.method private declared-synchronized a()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerRouterInterceptor;->b:Lcom/samsung/android/app/music/network/init/StartClientProvider;

    invoke-interface {v0}, Lcom/samsung/android/app/music/network/init/StartClientProvider;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 60
    :try_start_1
    sget-object v1, Lcom/samsung/android/app/music/network/interceptor/MusicServerRouterInterceptor;->a:Ljava/lang/String;

    const-string v2, "getServerUrl"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :goto_0
    monitor-exit p0

    throw v0
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

    .line 36
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->a()Lokhttp3/Request;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerRouterInterceptor;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerRouterInterceptor;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerRouterInterceptor;->c:Ljava/lang/String;

    .line 42
    sget-object v2, Lcom/samsung/android/app/music/network/interceptor/MusicServerRouterInterceptor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Host - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerRouterInterceptor;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerRouterInterceptor;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/network/exception/StartClientFailException;

    const-string v0, "serverUrl is null"

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/network/exception/StartClientFailException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lokhttp3/HttpUrl;->q()Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerRouterInterceptor;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl$Builder;->d(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl$Builder;->c()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {v0}, Lokhttp3/Request;->e()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->a()Lokhttp3/Request;

    move-result-object v0

    .line 51
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->a(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
