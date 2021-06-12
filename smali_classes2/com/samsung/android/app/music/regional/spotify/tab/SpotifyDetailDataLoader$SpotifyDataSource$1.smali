.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;->a(Landroid/content/Context;I)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lcom/samsung/android/app/music/regional/spotify/network/response/GetAlbumTracksResponse;",
        "Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource$1;->a:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/regional/spotify/network/response/GetAlbumTracksResponse;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "SpotifyDetailDataLoader"

    .line 113
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/GetAlbumTracksResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;-><init>(Lcom/samsung/android/app/music/regional/spotify/network/response/GetAlbumTracksResponse;)V

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/network/response/GetAlbumTracksResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$SpotifyDataSource$1;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/GetAlbumTracksResponse;)Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;

    move-result-object p1

    return-object p1
.end method
