.class public Lcom/samsung/android/app/music/model/base/BannerModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bannerId:Ljava/lang/String;

.field private bannerTitle:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private largeSizeImageUrl:Ljava/lang/String;

.field private linkType:Ljava/lang/String;

.field private linkUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBannerId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/BannerModel;->bannerId:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerTitle()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/BannerModel;->bannerTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/BannerModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeSizeImageUrl()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/BannerModel;->largeSizeImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkType()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/BannerModel;->linkType:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/BannerModel;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
