.class public Lcom/samsung/android/app/music/model/base/TagModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private tagId:Ljava/lang/String;

.field private tagName:Ljava/lang/String;

.field private tagTier:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTagId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TagModel;->tagId:Ljava/lang/String;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TagModel;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getTagTier()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/model/base/TagModel;->tagTier:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
