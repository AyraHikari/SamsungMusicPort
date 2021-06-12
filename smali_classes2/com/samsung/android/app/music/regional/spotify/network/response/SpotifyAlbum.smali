.class public Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private album_type:Ljava/lang/String;

.field artists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;",
            ">;"
        }
    .end annotation
.end field

.field private external_urls:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyExternalUrl;

.field private href:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;

.field type:Ljava/lang/String;

.field uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumType()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->album_type:Ljava/lang/String;

    return-object v0
.end method

.method public getArtists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->artists:Ljava/util/List;

    return-object v0
.end method

.method public getExternalUrls()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyExternalUrl;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->external_urls:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyExternalUrl;

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->images:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
