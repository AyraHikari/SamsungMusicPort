.class public Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntryPaging;
.super Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPaging;
.source "SourceFile"


# instance fields
.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPaging;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntryPaging;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntry;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntryPaging;->items:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
