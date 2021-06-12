.class public Lcom/samsung/android/app/music/model/base/MusicVideoModel;
.super Ljava/lang/Object;
.source "SourceFile"


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

.field private mvId:Ljava/lang/String;

.field private mvTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/base/MusicVideoModel;->artistList:Ljava/util/List;

    return-void
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

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/MusicVideoModel;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getExplicit()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/MusicVideoModel;->explicit:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/MusicVideoModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMvId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/MusicVideoModel;->mvId:Ljava/lang/String;

    return-object v0
.end method

.method public getMvTitle()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/MusicVideoModel;->mvTitle:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
