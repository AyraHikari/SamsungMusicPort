.class public Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# instance fields
.field private moreYn:Ljava/lang/String;

.field private playlistId:Ljava/lang/String;

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

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;->trackList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMoreYn()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;->moreYn:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;->playlistId:Ljava/lang/String;

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

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;->trackList:Ljava/util/List;

    return-object v0
.end method

.method public hasMore()Z
    .locals 2

    const-string v0, "Y"

    .line 40
    iget-object v1, p0, Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;->moreYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
