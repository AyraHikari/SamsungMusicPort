.class public Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;
.super Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyView;
.source "SourceFile"


# instance fields
.field content:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistPaging;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyView;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistPaging;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;->content:Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistPaging;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
