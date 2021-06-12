.class Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TempResponse"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/regional/spotify/network/response/GetAlbumTracksResponse;

.field private b:Lcom/samsung/android/app/music/regional/spotify/network/response/GetPlaylistTracksResponse;

.field private c:Lcom/samsung/android/app/music/regional/spotify/network/response/GetArtistToptracksResponse;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/regional/spotify/network/response/GetAlbumTracksResponse;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;->a:Lcom/samsung/android/app/music/regional/spotify/network/response/GetAlbumTracksResponse;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/regional/spotify/network/response/GetArtistToptracksResponse;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Ljava/lang/String;I)V

    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;->c:Lcom/samsung/android/app/music/regional/spotify/network/response/GetArtistToptracksResponse;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/regional/spotify/network/response/GetPlaylistTracksResponse;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Ljava/lang/String;I)V

    .line 79
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;->b:Lcom/samsung/android/app/music/regional/spotify/network/response/GetPlaylistTracksResponse;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;)Lcom/samsung/android/app/music/regional/spotify/network/response/GetAlbumTracksResponse;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;->a:Lcom/samsung/android/app/music/regional/spotify/network/response/GetAlbumTracksResponse;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;)Lcom/samsung/android/app/music/regional/spotify/network/response/GetPlaylistTracksResponse;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;->b:Lcom/samsung/android/app/music/regional/spotify/network/response/GetPlaylistTracksResponse;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;)Lcom/samsung/android/app/music/regional/spotify/network/response/GetArtistToptracksResponse;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailDataLoader$TempResponse;->c:Lcom/samsung/android/app/music/regional/spotify/network/response/GetArtistToptracksResponse;

    return-object p0
.end method
