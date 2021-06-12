.class public Lcom/samsung/android/app/music/model/browse/main/BannerMenuModel;
.super Lcom/samsung/android/app/music/model/browse/main/MenuModel;
.source "SourceFile"


# instance fields
.field private imageUrl:Ljava/lang/String;

.field private landscapeImageUrl:Ljava/lang/String;

.field private linkType:Ljava/lang/String;

.field private linkUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/browse/main/MenuModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/BannerMenuModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLandscapeImageUrl()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/BannerMenuModel;->landscapeImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkType()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/BannerMenuModel;->linkType:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/BannerMenuModel;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
