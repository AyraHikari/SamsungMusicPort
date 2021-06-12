.class public Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;
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

.field collaborative:Z

.field external_urls:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyExternalUrl;

.field href:Ljava/lang/String;

.field id:Ljava/lang/String;

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

.field owner:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyOwner;

.field publicValue:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "public"
    .end annotation
.end field

.field snapshot_id:Ljava/lang/String;

.field tracks:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyTracks;

.field type:Ljava/lang/String;

.field uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->artists:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->images:Ljava/util/List;

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

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->artists:Ljava/util/List;

    return-object v0
.end method

.method public getExternalUrls()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyExternalUrl;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->external_urls:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyExternalUrl;

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->id:Ljava/lang/String;

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

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->images:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyOwner;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->owner:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyOwner;

    return-object v0
.end method

.method public getPublicValue()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->publicValue:Z

    return v0
.end method

.method public getSnapshotId()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->snapshot_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTracks()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyTracks;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->tracks:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyTracks;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getcollaborative()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylist;->collaborative:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 102
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
