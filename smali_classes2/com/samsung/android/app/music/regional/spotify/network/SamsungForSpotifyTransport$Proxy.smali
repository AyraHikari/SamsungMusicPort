.class public Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field private static a:Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport;

.field private static volatile b:Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;->c:Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;->a()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport;
    .locals 2

    .line 48
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;->b:Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport;

    if-nez v0, :cond_1

    .line 49
    const-class v0, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;->b:Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;->b:Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport;

    .line 53
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 55
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;->b:Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport;

    return-object p0
.end method

.method static synthetic b()Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport;
    .locals 1

    .line 33
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;->a:Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/util/Map;)Lio/reactivex/Observable;
    .locals 2
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            a = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/GetAccessTokenResponse;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->b(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy$2;-><init>(Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;)V

    .line 70
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy$1;-><init>(Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;ILjava/util/Map;)V

    .line 76
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 59
    new-instance v0, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "https://hp-ir.glb.samsungmilkradio.com/"

    .line 60
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 61
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Z)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransportInterceptor;

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransportInterceptor;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Lokhttp3/Interceptor;)Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport;

    .line 63
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/retrofit/RetrofitGenerator$Builder;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport;

    sput-object v0, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;->a:Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport;

    return-void
.end method

.method public b(ILjava/util/Map;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->j(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy$3;-><init>(Lcom/samsung/android/app/music/regional/spotify/network/SamsungForSpotifyTransport$Proxy;ILjava/util/Map;)V

    .line 90
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
