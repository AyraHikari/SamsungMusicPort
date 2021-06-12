.class public Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field height:I

.field url:Ljava/lang/String;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;->height:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;->width:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
