.class public Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# instance fields
.field private albumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/AlbumModel;",
            ">;"
        }
    .end annotation
.end field

.field private moreYn:Ljava/lang/String;

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;->albumList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAlbumList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/AlbumModel;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;->albumList:Ljava/util/List;

    return-object v0
.end method

.method public getMoreYn()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;->moreYn:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;->totalCount:I

    return v0
.end method

.method public hasMore()Z
    .locals 2

    const-string v0, "Y"

    .line 44
    iget-object v1, p0, Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;->moreYn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAlbumList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/AlbumModel;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;->albumList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
