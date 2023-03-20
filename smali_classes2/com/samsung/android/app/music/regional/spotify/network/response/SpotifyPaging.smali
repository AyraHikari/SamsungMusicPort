.class public Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPaging;
.super Ljava/lang/Object;
.source "SpotifyPaging.java"


# instance fields
.field public href:Ljava/lang/String;

.field public limit:I

.field public next:Ljava/lang/String;

.field public offset:I

.field public previous:Ljava/lang/String;

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPaging;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPaging;->limit:I

    return v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPaging;->next:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPaging;->offset:I

    return v0
.end method

.method public getPrevious()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPaging;->previous:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyPaging;->total:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/builder/e;->B:Lorg/apache/commons/lang3/builder/e;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/d;->f(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
