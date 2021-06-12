.class public Lcom/samsung/android/app/music/network/retrofit/MusicRetrofitGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lokhttp3/Call$Factory;

.field private static volatile b:Lokhttp3/Call$Factory;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Z)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    .line 20
    invoke-static {p0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerInterceptors;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Ljava/util/Collection;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    .line 21
    new-instance v1, Lcom/samsung/android/app/music/network/secure/MusicServerCertificateFactory;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/secure/MusicServerCertificateFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Lcom/samsung/android/app/music/network/secure/SSLCertificateFactory;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    .line 22
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/network/retrofit/MusicRetrofitGenerator;->a(Landroid/content/Context;Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;)Lokhttp3/Call$Factory;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Ljava/lang/Class;Lokhttp3/Call$Factory;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;)Lokhttp3/Call$Factory;
    .locals 2

    .line 39
    sget-object v0, Lcom/samsung/android/app/music/network/retrofit/MusicRetrofitGenerator;->a:Lokhttp3/Call$Factory;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/network/retrofit/MusicRetrofitGenerator;->a:Lokhttp3/Call$Factory;

    if-nez v1, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 43
    new-instance v1, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;)V

    sput-object v1, Lcom/samsung/android/app/music/network/retrofit/MusicRetrofitGenerator;->a:Lokhttp3/Call$Factory;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 47
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/network/retrofit/MusicRetrofitGenerator;->a:Lokhttp3/Call$Factory;

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Z)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    .line 28
    new-instance v1, Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor;

    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/network/interceptor/LoginInterceptor;-><init>(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Lokhttp3/Interceptor;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    .line 29
    invoke-static {p0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerInterceptors;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Ljava/util/Collection;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    .line 30
    new-instance v1, Lcom/samsung/android/app/music/network/secure/MusicServerCertificateFactory;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/secure/MusicServerCertificateFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Lcom/samsung/android/app/music/network/secure/SSLCertificateFactory;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    .line 31
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/network/retrofit/MusicRetrofitGenerator;->b(Landroid/content/Context;Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;)Lokhttp3/Call$Factory;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Ljava/lang/Class;Lokhttp3/Call$Factory;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;)Lokhttp3/Call$Factory;
    .locals 2

    .line 51
    sget-object v0, Lcom/samsung/android/app/music/network/retrofit/MusicRetrofitGenerator;->b:Lokhttp3/Call$Factory;

    if-nez v0, :cond_1

    .line 52
    const-class v0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/network/retrofit/MusicRetrofitGenerator;->b:Lokhttp3/Call$Factory;

    if-nez v1, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 55
    new-instance v1, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/network/retrofit/OkHttpCallFactory;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;)V

    sput-object v1, Lcom/samsung/android/app/music/network/retrofit/MusicRetrofitGenerator;->b:Lokhttp3/Call$Factory;

    .line 57
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 59
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/network/retrofit/MusicRetrofitGenerator;->b:Lokhttp3/Call$Factory;

    return-object p0
.end method
