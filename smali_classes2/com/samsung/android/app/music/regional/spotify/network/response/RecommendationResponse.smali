.class public Lcom/samsung/android/app/music/regional/spotify/network/response/RecommendationResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field content:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;

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

.field rendering:Ljava/lang/String;

.field tag_line:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/RecommendationResponse;->images:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getContent()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/RecommendationResponse;->content:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistViewPaging;

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/RecommendationResponse;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/RecommendationResponse;->id:Ljava/lang/String;

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

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/RecommendationResponse;->images:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/RecommendationResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRendering()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/RecommendationResponse;->rendering:Ljava/lang/String;

    return-object v0
.end method

.method public getTagLine()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/RecommendationResponse;->tag_line:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/RecommendationResponse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
