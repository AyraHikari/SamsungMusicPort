.class public Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field private static a:Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;


# direct methods
.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;
    .locals 3

    .line 47
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport$Proxy;->a:Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "http://www.samsung.com/"

    .line 49
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object v0

    const-wide/16 v1, 0x61a8

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(J)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;->NONE:Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;

    .line 51
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Lcom/samsung/android/app/music/network/interceptor/HttpLoggingInterceptor$Level;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerApiCallControlInterceptor;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Lokhttp3/Interceptor;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryHeaderInterceptor;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryHeaderInterceptor;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Lokhttp3/Interceptor;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object p0

    const-class v0, Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;

    .line 54
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;

    sput-object p0, Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport$Proxy;->a:Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;

    .line 56
    :cond_0
    sget-object p0, Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport$Proxy;->a:Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;

    return-object p0
.end method
