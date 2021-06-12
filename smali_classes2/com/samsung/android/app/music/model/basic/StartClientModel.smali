.class public Lcom/samsung/android/app/music/model/basic/StartClientModel;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# instance fields
.field private api_server:Ljava/lang/String;

.field private channelId:Ljava/lang/String;

.field private clearCacheDate:Ljava/lang/String;

.field private connectedGeoCountry:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private curTime:Ljava/lang/String;

.field private forceUpdateVersion:Ljava/lang/String;

.field private http_ext_server:Ljava/lang/String;

.field private http_proxy_server:Ljava/lang/String;

.field private mod_http_server:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private partnerAppPackageName:Ljava/lang/String;

.field private partnerAppVersion:Ljava/lang/String;

.field private shopAgeLimit:Ljava/lang/String;

.field private shopId:Ljava/lang/String;

.field private timeZone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiServer()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StartClientModel;->api_server:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StartClientModel;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getClearCacheDate()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StartClientModel;->clearCacheDate:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectedGeoCountry()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StartClientModel;->connectedGeoCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCurTime()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StartClientModel;->curTime:Ljava/lang/String;

    return-object v0
.end method

.method public getForceUpdateVersion()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StartClientModel;->forceUpdateVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpExtServer()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StartClientModel;->http_ext_server:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpProxyServer()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StartClientModel;->http_proxy_server:Ljava/lang/String;

    return-object v0
.end method

.method public getModHttpServer()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StartClientModel;->mod_http_server:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StartClientModel;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPartnerAppPackageName()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StartClientModel;->partnerAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPartnerAppVersion()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StartClientModel;->partnerAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getShopAgeLimit()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StartClientModel;->shopAgeLimit:Ljava/lang/String;

    return-object v0
.end method

.method public getShopId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StartClientModel;->shopId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/model/basic/StartClientModel;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 111
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
