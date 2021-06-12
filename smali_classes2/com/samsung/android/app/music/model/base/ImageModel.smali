.class public Lcom/samsung/android/app/music/model/base/ImageModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected imageUrl:Ljava/lang/String;

.field protected size:I

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ImageModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/samsung/android/app/music/model/base/ImageModel;->size:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/samsung/android/app/music/model/base/ImageModel;->width:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
