.class Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;)Lio/reactivex/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;

.field final synthetic b:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2;Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2$1;->b:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2;

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2$1;->a:Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SpotifyCheckSupportedCountry"

    const-string v1, "checkSupportedCountryFromServer - 3.1"

    .line 119
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2$1;->b:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2;->a:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2$1$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2$1$1;-><init>(Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2$1;Lio/reactivex/ObservableEmitter;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry;->a(Landroid/content/Context;Lcom/samsung/android/app/music/regional/spotify/network/GetSpotifySupportedCountryResponseListener;)V

    return-void
.end method
