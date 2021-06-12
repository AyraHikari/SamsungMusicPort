.class public Lcom/samsung/android/app/music/model/basic/StoreDataModel;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# instance fields
.field private adFlag:I

.field private adInterval:Ljava/lang/String;

.field private bixbyConfigKeywordCount:Ljava/lang/String;

.field private bixbyConfigListCount:Ljava/lang/String;

.field private bixbyConfigListType:Ljava/lang/String;

.field private bixbyConfigSearchCount:Ljava/lang/String;

.field private bixbySearchDelimeterYn:I

.field private configs:Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;

.field private curTime:Ljava/lang/String;

.field private currencyCode:Ljava/lang/String;

.field private currencySign:Ljava/lang/String;

.field private dormancyCount:I

.field private eosFlag:I

.field private forceUpdateVersion:Ljava/lang/String;

.field private justForYou:I

.field private justForYouLinkUrl:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private partnerAppPackageName:Ljava/lang/String;

.field private partnerAppVersion:Ljava/lang/String;

.field private prefetchUpdateDate:Ljava/lang/String;

.field private shopAgeLimit:Ljava/lang/String;

.field private sleepTimer:I

.field private stationOrderUpdateDate:Ljava/lang/String;

.field private timeZone:Ljava/lang/String;

.field private videoAdIntervalTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdFlag()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->adFlag:I

    return v0
.end method

.method public getAdInterval()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->adInterval:Ljava/lang/String;

    return-object v0
.end method

.method public getBixbyConfigKeywordCount()I
    .locals 1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->bixbyConfigKeywordCount:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getBixbyConfigListCount()I
    .locals 1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->bixbyConfigListCount:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getBixbyConfigListType()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->bixbyConfigListType:Ljava/lang/String;

    return-object v0
.end method

.method public getBixbyConfigSearchCount()I
    .locals 1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->bixbyConfigSearchCount:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getBixbySearchDelimeterYn()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->bixbySearchDelimeterYn:I

    return v0
.end method

.method public getConfigs()Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->configs:Lcom/samsung/android/app/music/model/basic/StoreDataConfigModel;

    return-object v0
.end method

.method public getCurTime()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->curTime:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencySign()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->currencySign:Ljava/lang/String;

    return-object v0
.end method

.method public getDormancyCount()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->dormancyCount:I

    return v0
.end method

.method public getEosFlag()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->eosFlag:I

    return v0
.end method

.method public getForceUpdateVersion()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->forceUpdateVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getJustForYou()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->justForYou:I

    return v0
.end method

.method public getJustForYouLinkUrl()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->justForYouLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPartnerAppPackageName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->partnerAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPartnerAppVersion()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->partnerAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefetchUpdateDate()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->prefetchUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method public getShopAgeLimit()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->shopAgeLimit:Ljava/lang/String;

    return-object v0
.end method

.method public getSleepTimer()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->sleepTimer:I

    return v0
.end method

.method public getStationOrderUpdateDate()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->stationOrderUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoAdIntervalTime()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StoreDataModel;->videoAdIntervalTime:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 187
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
