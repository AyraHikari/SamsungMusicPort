.class public Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private banMaxCnt:I

.field private bannerAdDefaultCp:I

.field private copyRight:Ljava/lang/String;

.field private postrollAdDefaultCp:I

.field private preAudioAdIntervalTime:I

.field private purchaseBlock:Ljava/lang/String;

.field private purchasePopupText:Ljava/lang/String;

.field private videoAdDefaultCp:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBanMaxCnt()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;->banMaxCnt:I

    return v0
.end method

.method public getBannerAdDefaultCp()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;->bannerAdDefaultCp:I

    return v0
.end method

.method public getCopyRight()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;->copyRight:Ljava/lang/String;

    return-object v0
.end method

.method public getPostrollAdDefaultCp()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;->postrollAdDefaultCp:I

    return v0
.end method

.method public getPreAudioAdIntervalTime()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;->preAudioAdIntervalTime:I

    return v0
.end method

.method public getPurchaseBlock()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;->purchaseBlock:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchasePopupText()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;->purchasePopupText:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoAdDefaultCp()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;->videoAdDefaultCp:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
