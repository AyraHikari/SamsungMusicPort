.class public Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected external_urls:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyExternalUrl;

.field protected href:Ljava/lang/String;

.field protected id:Ljava/lang/String;

.field protected images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;",
            ">;"
        }
    .end annotation
.end field

.field protected name:Ljava/lang/String;

.field protected rendering:Ljava/lang/String;

.field protected tagline:Ljava/lang/String;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyExternalUrl;

    invoke-direct {v0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyExternalUrl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyView;->external_urls:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyExternalUrl;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyView;->images:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getExternalUrls()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyExternalUrl;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyView;->external_urls:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyExternalUrl;

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyView;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyView;->id:Ljava/lang/String;

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

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyView;->images:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyView;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRendering()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyView;->rendering:Ljava/lang/String;

    return-object v0
.end method

.method public getTagline()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyView;->tagline:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyView;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyView;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 69
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
