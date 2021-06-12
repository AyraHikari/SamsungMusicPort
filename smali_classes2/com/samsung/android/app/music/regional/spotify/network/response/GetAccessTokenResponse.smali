.class public Lcom/samsung/android/app/music/regional/spotify/network/response/GetAccessTokenResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field id:I

.field resultCode:I

.field tokenInfo:Lcom/samsung/android/app/music/regional/spotify/network/response/TokenInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/GetAccessTokenResponse;->id:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/GetAccessTokenResponse;->resultCode:I

    return v0
.end method

.method public getTokenInfo()Lcom/samsung/android/app/music/regional/spotify/network/response/TokenInfo;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/GetAccessTokenResponse;->tokenInfo:Lcom/samsung/android/app/music/regional/spotify/network/response/TokenInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
