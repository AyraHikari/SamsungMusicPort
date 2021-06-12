.class public Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Call$Factory;


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private b:Lokhttp3/OkHttpClient;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;->d:Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;->c:Landroid/content/Context;

    return-void
.end method

.method private static a(Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;)Lokhttp3/Interceptor;
    .locals 2

    .line 115
    new-instance v0, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;

    new-instance v1, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory$3;

    invoke-direct {v1}, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory$3;-><init>()V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;-><init>(Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Logger;)V

    .line 122
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;->a(Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;)Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor;

    return-object v0
.end method

.method private a()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;->b:Lokhttp3/OkHttpClient;

    if-eqz v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;->b()V

    return-void
.end method

.method private declared-synchronized b()V
    .locals 4

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;->b:Lokhttp3/OkHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 81
    monitor-exit p0

    return-void

    .line 83
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "http_responses"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    new-instance v1, Lokhttp3/Cache;

    const-wide/32 v2, 0xa00000

    invoke-direct {v1, v0, v2, v3}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    .line 86
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 87
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->a(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 88
    iget-object v1, p0, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;->d:Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    iget-wide v1, v1, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->c:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->a(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 89
    iget-object v1, p0, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;->d:Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    iget-wide v1, v1, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->d:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->b(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 90
    new-instance v1, Lcom/samsung/android/app/music/network/retrofit/OkHttpEventLogger;

    invoke-direct {v1}, Lcom/samsung/android/app/music/network/retrofit/OkHttpEventLogger;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->a(Lokhttp3/EventListener;)Lokhttp3/OkHttpClient$Builder;

    .line 92
    iget-object v1, p0, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;->d:Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    iget-boolean v1, v1, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->f:Z

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;->d:Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    iget-object v1, v1, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->h:Lcom/samsung/android/app/music/network/secure/SSLCertificateFactory;

    .line 94
    invoke-interface {v1}, Lcom/samsung/android/app/music/network/secure/SSLCertificateFactory;->c()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->a(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;->d:Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    iget-object v1, v1, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->h:Lcom/samsung/android/app/music/network/secure/SSLCertificateFactory;

    invoke-interface {v1}, Lcom/samsung/android/app/music/network/secure/SSLCertificateFactory;->b()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 100
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->a(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;->d:Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    iget-object v1, v1, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->g:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 105
    iget-object v1, p0, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;->d:Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    iget-object v1, v1, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Interceptor;

    .line 106
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->a(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_0

    .line 109
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;->d:Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    iget-object v1, v1, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->e:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;

    invoke-static {v1}, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;->a(Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;)Lokhttp3/Interceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->a(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 110
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/StethoUtils;->a(Lokhttp3/OkHttpClient$Builder;)V

    .line 111
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->b()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;->b:Lokhttp3/OkHttpClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 79
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lokhttp3/Request;)Lokhttp3/Call;
    .locals 1
    .param p1    # Lokhttp3/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;->a()V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;->b:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method
