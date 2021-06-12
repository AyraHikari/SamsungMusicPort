.class public final Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoaderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(J)Lokhttp3/OkHttpClient$Builder;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoaderKt;->a(JZILjava/lang/Object;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final a(JZ)Lokhttp3/OkHttpClient$Builder;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 25
    new-instance p2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 26
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p0, p1, v1}, Lokhttp3/OkHttpClient$Builder;->b(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    .line 27
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p0, p1, v1}, Lokhttp3/OkHttpClient$Builder;->a(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 28
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->a(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    const-string p1, "OkHttpClient.Builder()\n \u2026NDS)\n        .cache(null)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_0
    new-instance p2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p0, p1, v1}, Lokhttp3/OkHttpClient$Builder;->b(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    .line 31
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p0, p1, v1}, Lokhttp3/OkHttpClient$Builder;->a(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 32
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->a(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    .line 33
    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient$Builder;->a(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    const-string p1, "OkHttpClient.Builder().r\u2026   .proxy(Proxy.NO_PROXY)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public static synthetic a(JZILjava/lang/Object;)Lokhttp3/OkHttpClient$Builder;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 24
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoaderKt;->a(JZ)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final b(J)Lokhttp3/OkHttpClient;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoaderKt;->b(JZILjava/lang/Object;)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final b(JZ)Lokhttp3/OkHttpClient;
    .locals 0

    .line 37
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoaderKt;->a(JZ)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->b()Lokhttp3/OkHttpClient;

    move-result-object p0

    const-string p1, "getClientBuilder(timeout, useProxy).build()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic b(JZILjava/lang/Object;)Lokhttp3/OkHttpClient;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 36
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/OKHttpServiceNetworkLoaderKt;->b(JZ)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method
