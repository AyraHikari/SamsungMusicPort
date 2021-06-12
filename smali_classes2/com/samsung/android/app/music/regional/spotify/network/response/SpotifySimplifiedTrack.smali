.class public Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
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

.field is_local:Z

.field name:Ljava/lang/String;

.field preview_url:Ljava/lang/String;

.field track_number:I

.field type:Ljava/lang/String;

.field uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->available_markets:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->artists:Ljava/util/List;

    return-void
.end method


# virtual methods
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

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->artists:Ljava/util/List;

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

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->available_markets:Ljava/util/List;

    return-object v0
.end method

.method public getDiscNumber()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->disc_number:I

    return v0
.end method

.method public getDurationMs()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->duration_ms:I

    return v0
.end method

.method public getExplicit()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->explicit:Z

    return v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLocal()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->is_local:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackNumber()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->track_number:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 102
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
