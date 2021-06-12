.class public Lcom/samsung/android/app/music/model/browse/main/TipMenuModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private description:Ljava/lang/String;

.field private linkType:Ljava/lang/String;

.field private linkUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private updateDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/TipMenuModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkType()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/TipMenuModel;->linkType:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/TipMenuModel;->linkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/TipMenuModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateDate()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/TipMenuModel;->updateDate:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
