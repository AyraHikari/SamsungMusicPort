.class public Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;
.super Ljava/lang/Object;
.source "GetCurrentCountryCode.java"


# instance fields
.field public availableCountriesVersionCode:Ljava/lang/String;

.field public countryCode:Ljava/lang/String;

.field public forceUpdateVersionCode:Ljava/lang/String;

.field public id:I

.field public resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableCountriesVersionCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;->availableCountriesVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getForceUpdateVersionCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;->forceUpdateVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;->id:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/GetCurrentCountryCode;->resultCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/builder/e;->B:Lorg/apache/commons/lang3/builder/e;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/d;->f(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
