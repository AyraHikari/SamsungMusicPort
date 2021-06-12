.class final Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry;->a(Landroid/content/Context;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/Observable<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$4;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SpotifyCheckSupportedCountry"

    const-string v1, "checkSupportedCountryFromServer - 1"

    .line 74
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$4;->a:Landroid/content/Context;

    const-string v1, "key_spotify_supported_country_version"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SpotifyCheckSupportedCountry"

    const-string v1, "checkSupportedCountryFromServer - 1.1"

    .line 77
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry;->b(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "SpotifyCheckSupportedCountry"

    const-string v1, "checkSupportedCountryFromServer - 1.2"

    .line 80
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 81
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$4;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
