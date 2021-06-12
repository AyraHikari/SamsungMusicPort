.class public Lcom/samsung/android/app/music/network/request/post/recommend/PlayerPostBody;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private trackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/network/request/post/recommend/TrackPostBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/network/request/post/recommend/PlayerPostBody;->trackList:Ljava/util/List;

    return-void
.end method

.method public static create(Ljava/util/List;)Lcom/samsung/android/app/music/network/request/post/recommend/PlayerPostBody;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/network/request/post/recommend/TrackPostBody;",
            ">;)",
            "Lcom/samsung/android/app/music/network/request/post/recommend/PlayerPostBody;"
        }
    .end annotation

    .line 17
    new-instance v0, Lcom/samsung/android/app/music/network/request/post/recommend/PlayerPostBody;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/request/post/recommend/PlayerPostBody;-><init>()V

    .line 18
    iput-object p0, v0, Lcom/samsung/android/app/music/network/request/post/recommend/PlayerPostBody;->trackList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getTrackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/network/request/post/recommend/TrackPostBody;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/network/request/post/recommend/PlayerPostBody;->trackList:Ljava/util/List;

    return-object v0
.end method

.method public setTrackList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/network/request/post/recommend/TrackPostBody;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/music/network/request/post/recommend/PlayerPostBody;->trackList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
