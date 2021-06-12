.class public Lcom/samsung/android/app/music/network/request/post/recommend/ArtistPostBody;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private artistId:Ljava/lang/String;

.field private artistName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/network/request/post/recommend/ArtistPostBody;
    .locals 1

    .line 16
    new-instance v0, Lcom/samsung/android/app/music/network/request/post/recommend/ArtistPostBody;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/request/post/recommend/ArtistPostBody;-><init>()V

    .line 17
    iput-object p0, v0, Lcom/samsung/android/app/music/network/request/post/recommend/ArtistPostBody;->artistId:Ljava/lang/String;

    .line 18
    iput-object p1, v0, Lcom/samsung/android/app/music/network/request/post/recommend/ArtistPostBody;->artistName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getArtistId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/post/recommend/ArtistPostBody;->artistId:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/post/recommend/ArtistPostBody;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public setArtistId(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/post/recommend/ArtistPostBody;->artistId:Ljava/lang/String;

    return-void
.end method

.method public setArtistName(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/post/recommend/ArtistPostBody;->artistName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
