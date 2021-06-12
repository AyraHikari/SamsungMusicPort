.class public Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private albums:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private artists:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;",
            ">;"
        }
    .end annotation
.end field

.field private playlists:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private tracks:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbums()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;->albums:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;

    return-object v0
.end method

.method public getArtists()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;->artists:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;

    return-object v0
.end method

.method public getPlaylists()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;->playlists:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;

    return-object v0
.end method

.method public getTracks()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SearchResponse;->tracks:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPagingItem;

    return-object v0
.end method
