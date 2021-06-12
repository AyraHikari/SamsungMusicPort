.class public Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPaging;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected href:Ljava/lang/String;

.field protected limit:I

.field protected next:Ljava/lang/String;

.field protected offset:I

.field protected previous:Ljava/lang/String;

.field protected total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPaging;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPaging;->limit:I

    return v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPaging;->next:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPaging;->offset:I

    return v0
.end method

.method public getPrevious()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPaging;->previous:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPaging;->total:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
