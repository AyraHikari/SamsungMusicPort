.class final Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$4;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken;->d(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/regional/spotify/network/response/GetAccessTokenResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$4;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/regional/spotify/network/response/GetAccessTokenResponse;)V
    .locals 3

    const-string v0, "SpotifyAccessToken"

    const-string v1, "requestAccessToken - onNext"

    .line 161
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "SpotifyAccessToken"

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAccessToken - response : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/GetAccessTokenResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$4;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken;->a(Landroid/content/Context;Lcom/samsung/android/app/music/regional/spotify/network/response/GetAccessTokenResponse;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    const-string v0, "SpotifyAccessToken"

    const-string v1, "requestAccessToken - onComplete"

    .line 150
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "SpotifyAccessToken"

    const-string v1, "requestAccessToken - onError"

    .line 155
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 147
    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/network/response/GetAccessTokenResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyAccessToken$4;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/GetAccessTokenResponse;)V

    return-void
.end method
