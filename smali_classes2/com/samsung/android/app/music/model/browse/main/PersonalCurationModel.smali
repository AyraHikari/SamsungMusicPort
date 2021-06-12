.class public Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# instance fields
.field private cards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/browse/main/CardModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;->cards:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/browse/main/CardModel;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;->cards:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
