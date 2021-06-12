.class public Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyTracks;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field href:Ljava/lang/String;

.field total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyTracks;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyTracks;->total:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
