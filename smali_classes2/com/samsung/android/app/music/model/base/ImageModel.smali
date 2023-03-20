.class public Lcom/samsung/android/app/music/model/base/ImageModel;
.super Ljava/lang/Object;
.source "ImageModel.java"


# instance fields
.field public imageUrl:Ljava/lang/String;

.field public size:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/ImageModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/model/base/ImageModel;->size:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/model/base/ImageModel;->width:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/commons/lang3/builder/e;->B:Lorg/apache/commons/lang3/builder/e;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/d;->f(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
