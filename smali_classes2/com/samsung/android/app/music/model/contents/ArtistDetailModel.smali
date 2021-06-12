.class public Lcom/samsung/android/app/music/model/contents/ArtistDetailModel;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# instance fields
.field private artistInfo:Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

.field private moreYn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtistInfo()Lcom/samsung/android/app/music/model/base/ArtistInfoModel;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/model/contents/ArtistDetailModel;->artistInfo:Lcom/samsung/android/app/music/model/base/ArtistInfoModel;

    return-object v0
.end method

.method public getMoreYn()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/model/contents/ArtistDetailModel;->moreYn:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
