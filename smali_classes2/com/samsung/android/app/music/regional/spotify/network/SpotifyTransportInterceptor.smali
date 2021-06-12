.class public Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransportInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransportInterceptor;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransportInterceptor;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->g(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->b()V

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransportInterceptor;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->h(Landroid/content/Context;)V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransportInterceptor;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken;->b(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "Get Access Token Error"

    .line 40
    invoke-static {v2}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v2

    const-wide/16 v3, 0xa

    invoke-virtual {v0, v3, v4, v1, v2}, Lio/reactivex/Observable;->a(JLjava/util/concurrent/TimeUnit;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lio/reactivex/Observable;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v1, "Get Access Token Error"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Get Access Token Error"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_1
    :goto_0
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->a()Lokhttp3/Request;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lokhttp3/Request;->e()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->a()Lokhttp3/Request;

    move-result-object v0

    const-string v1, "SpotifyTransportInterceptor"

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intercept - request : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->a(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    const-string v0, "SpotifyTransportInterceptor"

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intercept - response : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lokhttp3/Response;->c()I

    return-object p1
.end method
