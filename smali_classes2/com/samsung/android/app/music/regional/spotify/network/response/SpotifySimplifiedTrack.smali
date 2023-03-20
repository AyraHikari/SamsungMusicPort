.class public Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;
.super Ljava/lang/Object;
.source "SpotifySimplifiedTrack.java"


# instance fields
.field public artists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyArtist;",
            ">;"
        }
    .end annotation
.end field

.field public available_markets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public disc_number:I

.field public duration_ms:I

.field public explicit:Z

.field public href:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public is_local:Z

.field public name:Ljava/lang/String;

.field public preview_url:Ljava/lang/String;

.field public track_number:I

.field public type:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->available_markets:Ljava/util/List;

    .line 3
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

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->available_markets:Ljava/util/List;

    return-object v0
.end method

.method public getDiscNumber()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->disc_number:I

    return v0
.end method

.method public getDurationMs()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->duration_ms:I

    return v0
.end method

.method public getExplicit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->explicit:Z

    return v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLocal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->is_local:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->preview_url:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackNumber()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->track_number:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedTrack;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/builder/e;->B:Lorg/apache/commons/lang3/builder/e;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/d;->f(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
