.class public Lcom/samsung/android/app/music/network/transport/BasicTransport$Instance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/network/transport/BasicTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Instance"
.end annotation


# static fields
.field private static a:Lcom/samsung/android/app/music/network/transport/BasicTransport;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/BasicTransport;
    .locals 0

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/BasicTransport$Instance;->b(Landroid/content/Context;)V

    .line 53
    sget-object p0, Lcom/samsung/android/app/music/network/transport/BasicTransport$Instance;->a:Lcom/samsung/android/app/music/network/transport/BasicTransport;

    return-object p0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 2

    .line 57
    sget-object v0, Lcom/samsung/android/app/music/network/transport/BasicTransport$Instance;->a:Lcom/samsung/android/app/music/network/transport/BasicTransport;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "https://api.glb.samsungmilkradio.com/"

    .line 60
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Z)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/secure/MusicServerCertificateFactory;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/secure/MusicServerCertificateFactory;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Lcom/samsung/android/app/music/network/secure/SSLCertificateFactory;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Lokhttp3/Interceptor;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientBasicQueryInterceptor;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientBasicQueryInterceptor;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Lokhttp3/Interceptor;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryHeaderInterceptor;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryHeaderInterceptor;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Lokhttp3/Interceptor;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/interceptor/SimpleLoggingInterceptor;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/interceptor/SimpleLoggingInterceptor;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Lokhttp3/Interceptor;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientUrlRouterInterceptor;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientUrlRouterInterceptor;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Lokhttp3/Interceptor;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object p0

    const-class v0, Lcom/samsung/android/app/music/network/transport/BasicTransport;

    .line 67
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/network/transport/BasicTransport;

    sput-object p0, Lcom/samsung/android/app/music/network/transport/BasicTransport$Instance;->a:Lcom/samsung/android/app/music/network/transport/BasicTransport;

    :cond_0
    return-void
.end method
