.class public Lcom/samsung/android/app/music/model/base/YearBaseModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ImageModel;",
            ">;"
        }
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;

.field private largeSizeImageUrl:Ljava/lang/String;

.field private yearId:Ljava/lang/String;

.field private yearName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/model/base/YearBaseModel;->yearId:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/samsung/android/app/music/model/base/YearBaseModel;->yearName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/ImageModel;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/YearBaseModel;->imageList:Ljava/util/List;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/YearBaseModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeSizeImageUrl()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/YearBaseModel;->largeSizeImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getYearId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/YearBaseModel;->yearId:Ljava/lang/String;

    return-object v0
.end method

.method public getYearName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/YearBaseModel;->yearName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
