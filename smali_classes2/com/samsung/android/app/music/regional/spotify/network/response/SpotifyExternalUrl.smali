.class public Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyExternalUrl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field spotify:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpotify()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyExternalUrl;->spotify:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
