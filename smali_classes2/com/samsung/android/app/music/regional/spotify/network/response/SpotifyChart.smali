.class public Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChart;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected country:Ljava/lang/String;

.field protected date:Ljava/lang/String;

.field protected description:Ljava/lang/String;

.field protected entries:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntryPaging;

.field protected href:Ljava/lang/String;

.field protected images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;",
            ">;"
        }
    .end annotation
.end field

.field protected name:Ljava/lang/String;

.field protected recurrence:Ljava/lang/String;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChart;->images:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChart;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChart;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChart;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntryPaging;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChart;->entries:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntryPaging;

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChart;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChart;->images:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChart;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurrence()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChart;->recurrence:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChart;->type:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
