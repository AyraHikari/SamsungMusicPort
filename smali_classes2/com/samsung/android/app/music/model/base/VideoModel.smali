.class public Lcom/samsung/android/app/music/model/base/VideoModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXPLICIT_TRUE:Ljava/lang/String; = "1"


# instance fields
.field private artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;"
        }
    .end annotation
.end field

.field private explicit:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private videoId:Ljava/lang/String;

.field private videoTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/base/VideoModel;->artistList:Ljava/util/List;

    return-void
.end method

.method public static convertModels(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/MusicVideoModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/VideoModel;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/model/base/MusicVideoModel;

    .line 82
    new-instance v2, Lcom/samsung/android/app/music/model/base/VideoModel;

    invoke-direct {v2}, Lcom/samsung/android/app/music/model/base/VideoModel;-><init>()V

    .line 83
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/MusicVideoModel;->getMvId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/model/base/VideoModel;->setVideoId(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/MusicVideoModel;->getMvTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/model/base/VideoModel;->setVideoTitle(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/MusicVideoModel;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/model/base/VideoModel;->setImageUrl(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/MusicVideoModel;->getExplicit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/model/base/VideoModel;->setExplicit(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/MusicVideoModel;->getArtistList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/model/base/VideoModel;->setArtistList(Ljava/util/List;)V

    .line 88
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getArtistList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/VideoModel;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getExplicit()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/VideoModel;->explicit:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/VideoModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/VideoModel;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/VideoModel;->videoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setArtistList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/music/model/base/VideoModel;->artistList:Ljava/util/List;

    return-void
.end method

.method public setExplicit(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/model/base/VideoModel;->explicit:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/samsung/android/app/music/model/base/VideoModel;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/music/model/base/VideoModel;->videoId:Ljava/lang/String;

    return-void
.end method

.method public setVideoTitle(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/model/base/VideoModel;->videoTitle:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
