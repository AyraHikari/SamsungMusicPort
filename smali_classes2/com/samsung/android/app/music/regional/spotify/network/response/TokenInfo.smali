.class public Lcom/samsung/android/app/music/regional/spotify/network/response/TokenInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field access_token:Ljava/lang/String;

.field created_date:Ljava/lang/String;

.field expires_in:I

.field scope:Ljava/lang/String;

.field token_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/TokenInfo;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/TokenInfo;->created_date:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresIn()J
    .locals 2

    .line 43
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/TokenInfo;->expires_in:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/TokenInfo;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenType()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/TokenInfo;->token_type:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
