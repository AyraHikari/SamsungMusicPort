.class public Lcom/samsung/android/app/music/model/base/AlbumModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SECTION_PARTICIPATING:Ljava/lang/String; = "02"

.field public static final SECTION_RELEASED:Ljava/lang/String; = "01"


# instance fields
.field private albumId:Ljava/lang/String;

.field private albumTitle:Ljava/lang/String;

.field private artistList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;"
        }
    .end annotation
.end field

.field private category:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private imgList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "imgList"
        b = {
            "imageList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ImageModel;",
            ">;"
        }
    .end annotation
.end field

.field private largeSizeImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumModel;->imgList:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumModel;->artistList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumModel;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumModel;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

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

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumModel;->artistList:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumModel;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ImageModel;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumModel;->imgList:Ljava/util/List;

    return-object v0
.end method

.method public getLargeSizeImageUrl()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/AlbumModel;->largeSizeImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
