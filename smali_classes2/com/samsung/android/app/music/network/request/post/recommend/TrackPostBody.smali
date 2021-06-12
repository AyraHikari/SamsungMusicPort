.class public Lcom/samsung/android/app/music/network/request/post/recommend/TrackPostBody;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private albumTitle:Ljava/lang/String;

.field private artistName:Ljava/lang/String;

.field private audioType:Ljava/lang/String;

.field private trackId:Ljava/lang/String;

.field private trackTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/network/request/post/recommend/TrackPostBody;
    .locals 1

    .line 23
    new-instance v0, Lcom/samsung/android/app/music/network/request/post/recommend/TrackPostBody;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/request/post/recommend/TrackPostBody;-><init>()V

    .line 24
    iput-object p0, v0, Lcom/samsung/android/app/music/network/request/post/recommend/TrackPostBody;->trackId:Ljava/lang/String;

    .line 25
    iput-object p1, v0, Lcom/samsung/android/app/music/network/request/post/recommend/TrackPostBody;->audioType:Ljava/lang/String;

    .line 26
    iput-object p2, v0, Lcom/samsung/android/app/music/network/request/post/recommend/TrackPostBody;->trackTitle:Ljava/lang/String;

    .line 27
    iput-object p3, v0, Lcom/samsung/android/app/music/network/request/post/recommend/TrackPostBody;->albumTitle:Ljava/lang/String;

    .line 28
    iput-object p4, v0, Lcom/samsung/android/app/music/network/request/post/recommend/TrackPostBody;->artistName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/post/recommend/TrackPostBody;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAtistName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/post/recommend/TrackPostBody;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioType()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/post/recommend/TrackPostBody;->audioType:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/post/recommend/TrackPostBody;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/post/recommend/TrackPostBody;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
