.class public Lcom/samsung/android/app/music/model/base/PlayListModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/model/base/PlayListModel$Auth;
    }
.end annotation


# static fields
.field public static final RECOMMEND_TYPE_BY_ARTIST:Ljava/lang/String; = "BA"

.field public static final RECOMMEND_TYPE_BY_SONG:Ljava/lang/String; = "BS"


# instance fields
.field private ad:Lcom/samsung/android/app/music/model/AdInfo;

.field private artistId:Ljava/lang/String;

.field private artistImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ImageListModel;",
            ">;"
        }
    .end annotation
.end field

.field private artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;"
        }
    .end annotation
.end field

.field private artistName:Ljava/lang/String;

.field private auth:Lcom/samsung/android/app/music/model/base/PlayListModel$Auth;

.field private bannable:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private favoriteYn:Ljava/lang/String;

.field private genreId:Ljava/lang/String;

.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ImageModel;",
            ">;"
        }
    .end annotation
.end field

.field private imageType:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private largeSizeImageUrl:Ljava/lang/String;

.field private playlistId:Ljava/lang/String;

.field private playlistName:Ljava/lang/String;

.field private provider:Ljava/lang/String;

.field private recommendKey:Ljava/lang/String;

.field private recommendType:Ljava/lang/String;

.field private relatedVideo:Ljava/lang/String;

.field private thumbnailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ThumbnailModel;",
            ">;"
        }
    .end annotation
.end field

.field private trackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->artistList:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->trackList:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->thumbnailList:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->artistImageList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAd()Lcom/samsung/android/app/music/model/AdInfo;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->ad:Lcom/samsung/android/app/music/model/AdInfo;

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->artistId:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ImageListModel;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->artistImageList:Ljava/util/List;

    return-object v0
.end method

.method public getArtistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFavoriteYn()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->favoriteYn:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreId()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->genreId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ImageModel;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->imageList:Ljava/util/List;

    return-object v0
.end method

.method public getImageType()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->imageType:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeSizeImageUrl()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->largeSizeImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistId()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->playlistId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->playlistName:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendKey()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->recommendKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendType()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->recommendType:Ljava/lang/String;

    return-object v0
.end method

.method public getRelatedVideo()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->relatedVideo:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ThumbnailModel;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->thumbnailList:Ljava/util/List;

    return-object v0
.end method

.method public getTrackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->trackList:Ljava/util/List;

    return-object v0
.end method

.method public hasRelatedVideo()Z
    .locals 2

    const-string v0, "1"

    .line 168
    iget-object v1, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->relatedVideo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isBannable()Z
    .locals 2

    const-string v0, "1"

    .line 172
    iget-object v1, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->bannable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public shuffle()Z
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->auth:Lcom/samsung/android/app/music/model/base/PlayListModel$Auth;

    if-eqz v0, :cond_1

    const-string v0, "false"

    iget-object v1, p0, Lcom/samsung/android/app/music/model/base/PlayListModel;->auth:Lcom/samsung/android/app/music/model/base/PlayListModel$Auth;

    iget-object v1, v1, Lcom/samsung/android/app/music/model/base/PlayListModel$Auth;->shuffle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 185
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
