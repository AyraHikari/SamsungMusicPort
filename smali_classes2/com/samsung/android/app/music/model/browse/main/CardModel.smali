.class public Lcom/samsung/android/app/music/model/browse/main/CardModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private banner:Lcom/samsung/android/app/music/model/base/BannerModel;

.field private cardId:Ljava/lang/String;

.field private cardType:Ljava/lang/String;

.field private order:I

.field private playlist:Lcom/samsung/android/app/music/model/base/PlayListModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBanner()Lcom/samsung/android/app/music/model/base/BannerModel;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/CardModel;->banner:Lcom/samsung/android/app/music/model/base/BannerModel;

    return-object v0
.end method

.method public getCardId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/CardModel;->cardId:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/CardModel;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/samsung/android/app/music/model/browse/main/CardModel;->order:I

    return v0
.end method

.method public getPlaylist()Lcom/samsung/android/app/music/model/base/PlayListModel;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/CardModel;->playlist:Lcom/samsung/android/app/music/model/base/PlayListModel;

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
