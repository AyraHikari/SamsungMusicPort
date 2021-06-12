.class public Lcom/samsung/android/app/music/regional/spotify/network/response/GetSpotifySupportedCountryResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private spotify_country:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/GetSpotifySupportedCountryResponse;->spotify_country:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getSpotify_country()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/GetSpotifySupportedCountryResponse;->spotify_country:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/GetSpotifySupportedCountryResponse;->version:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
