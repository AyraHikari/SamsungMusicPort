.class Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/regional/spotify/network/GetSpotifySupportedCountryResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2$1;->a(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/ObservableEmitter;

.field final synthetic b:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2$1;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2$1$1;->b:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2$1;

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2$1$1;->a:Lio/reactivex/ObservableEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2$1$1;->a:Lio/reactivex/ObservableEmitter;

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2$1$1;->b:Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2$1;->a:Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 128
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyCheckSupportedCountry$2$1$1;->a:Lio/reactivex/ObservableEmitter;

    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
