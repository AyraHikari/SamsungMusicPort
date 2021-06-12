.class public Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AlbumDetailModel"


# instance fields
.field private albumInfo:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

.field private moreYn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/samsung/android/app/music/model/contents/AlbumDetailTracksModel;)V
    .locals 3

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/AlbumDetailTracksModel;->getResultCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;->setResultCode(I)V

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/AlbumDetailTracksModel;->getResultMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;->setResultMsg(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/AlbumDetailTracksModel;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AlbumDetailModel"

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply. result code not success. code - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/AlbumDetailTracksModel;->getResultCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/AlbumDetailTracksModel;->getMoreYn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;->moreYn:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;->getAlbumInfo()Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/contents/AlbumDetailTracksModel;->getTrackList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/model/base/AlbumInfoModel;->setTrackList(Ljava/util/List;)V

    return-void
.end method

.method public getAlbumInfo()Lcom/samsung/android/app/music/model/base/AlbumInfoModel;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;->albumInfo:Lcom/samsung/android/app/music/model/base/AlbumInfoModel;

    return-object v0
.end method

.method public getMoreYn()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;->moreYn:Ljava/lang/String;

    return-object v0
.end method

.method public hasMore()Z
    .locals 2

    const-string v0, "Y"

    .line 48
    iget-object v1, p0, Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;->moreYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
