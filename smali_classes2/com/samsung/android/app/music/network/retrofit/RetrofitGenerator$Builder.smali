.class public final Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:J

.field d:J

.field e:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;

.field f:Z

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcom/samsung/android/app/music/network/secure/SSLCertificateFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a:Landroid/content/Context;

    const-string p1, "https://beta2-api.glb.samsungmilkradio.com/"

    .line 73
    iput-object p1, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->b:Ljava/lang/String;

    const-wide/16 v0, 0x61a8

    .line 75
    iput-wide v0, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->c:J

    .line 76
    iput-wide v0, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->d:J

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->e:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->f:Z

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->g:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 1

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->b()V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->h:Lcom/samsung/android/app/music/network/secure/SSLCertificateFactory;

    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Lcom/samsung/android/app/music/network/secure/CachedSystemCertificatePinning;->a()Lcom/samsung/android/app/music/network/secure/CachedSystemCertificatePinning;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->h:Lcom/samsung/android/app/music/network/secure/SSLCertificateFactory;

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->b:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/HttpUrl;->f(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    iget-boolean v1, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->f:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->q()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->a(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->c()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->b:Ljava/lang/String;

    goto :goto_0

    .line 147
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->f:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->q()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Builder;->a(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->c()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->b:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(J)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;
    .locals 0

    .line 88
    iput-wide p1, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->c:J

    return-object p0
.end method

.method public a(Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->e:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;

    return-object p0
.end method

.method public a(Lcom/samsung/android/app/music/network/secure/SSLCertificateFactory;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->h:Lcom/samsung/android/app/music/network/secure/SSLCertificateFactory;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Collection;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lokhttp3/Interceptor;",
            ">;)",
            "Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public a(Lokhttp3/Interceptor;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Z)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->f:Z

    return-object p0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a()V

    .line 124
    new-instance v0, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;

    iget-object v1, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Ljava/lang/Class;Lokhttp3/Call$Factory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Class;Lokhttp3/Call$Factory;)Ljava/lang/Object;
    .locals 2
    .param p2    # Lokhttp3/Call$Factory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lokhttp3/Call$Factory;",
            ")TT;"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a()V

    .line 129
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->a(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 130
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->a()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->a(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory;

    invoke-direct {v1}, Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory;-><init>()V

    .line 131
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->a(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0, p2}, Lretrofit2/Retrofit$Builder;->a(Lokhttp3/Call$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lretrofit2/Retrofit$Builder;->a()Lretrofit2/Retrofit;

    move-result-object p2

    invoke-virtual {p2, p1}, Lretrofit2/Retrofit;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
