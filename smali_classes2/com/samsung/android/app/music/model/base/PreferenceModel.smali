.class public Lcom/samsung/android/app/music/model/base/PreferenceModel;
.super Lcom/samsung/android/app/music/model/base/PreferenceBaseModel;
.source "SourceFile"


# instance fields
.field artistList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;"
        }
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;

.field private preName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/base/PreferenceBaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtistList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/base/ArtistModel;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PreferenceModel;->artistList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PreferenceModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPreName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/PreferenceModel;->preName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
