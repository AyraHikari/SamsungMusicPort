.class public Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field availableCountriesVersionCode:Ljava/lang/String;

.field countryCode:Ljava/lang/String;

.field forceUpdateVersionCode:Ljava/lang/String;

.field id:I

.field resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableCountriesVersionCode()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;->availableCountriesVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getForceUpdateVersionCode()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;->forceUpdateVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;->id:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;->resultCode:I

    return v0
.end method

.method public getcountryCode()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
