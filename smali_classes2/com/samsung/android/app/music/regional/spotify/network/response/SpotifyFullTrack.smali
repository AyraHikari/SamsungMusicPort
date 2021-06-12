.class public Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field album:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;

.field artists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;",
            ">;"
        }
    .end annotation
.end field

.field available_markets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field disc_number:I

.field duration_ms:I

.field explicit:Z

.field href:Ljava/lang/String;

.field id:Ljava/lang/String;

.field name:Ljava/lang/String;

.field popularity:I

.field preview_url:Ljava/lang/String;

.field track_number:I

.field type:Ljava/lang/String;

.field uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->available_markets:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->artists:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAlbum()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->album:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;

    return-object v0
.end method

.method public getArtistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->artists:Ljava/util/List;

    return-object v0
.end method

.method public getAvailableMarkets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->available_markets:Ljava/util/List;

    return-object v0
.end method

.method public getDiscNumber()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->disc_number:I

    return v0
.end method

.method public getDurationMs()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->duration_ms:I

    return v0
.end method

.method public getExplicit()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->explicit:Z

    return v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPopularity()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->popularity:I

    return v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackNumber()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->track_number:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 111
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
