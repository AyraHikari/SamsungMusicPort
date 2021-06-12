.class public Lcom/facebook/share/internal/LikeContent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder<",
        "Lcom/facebook/share/internal/LikeContent;",
        "Lcom/facebook/share/internal/LikeContent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private objectId:Ljava/lang/String;

.field private objectType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/internal/LikeContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/facebook/share/internal/LikeContent$Builder;->objectId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/share/internal/LikeContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/facebook/share/internal/LikeContent$Builder;->objectType:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/facebook/share/internal/LikeContent;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    new-instance v0, Lcom/facebook/share/internal/LikeContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/internal/LikeContent;-><init>(Lcom/facebook/share/internal/LikeContent$Builder;Lcom/facebook/share/internal/LikeContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeContent$Builder;->build()Lcom/facebook/share/internal/LikeContent;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/internal/LikeContent;)Lcom/facebook/share/internal/LikeContent$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/share/internal/LikeContent;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/LikeContent$Builder;->setObjectId(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {p1}, Lcom/facebook/share/internal/LikeContent;->getObjectType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/internal/LikeContent$Builder;->setObjectType(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    check-cast p1, Lcom/facebook/share/internal/LikeContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/LikeContent$Builder;->readFrom(Lcom/facebook/share/internal/LikeContent;)Lcom/facebook/share/internal/LikeContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setObjectId(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/facebook/share/internal/LikeContent$Builder;->objectId:Ljava/lang/String;

    return-object p0
.end method

.method public setObjectType(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/facebook/share/internal/LikeContent$Builder;->objectType:Ljava/lang/String;

    return-object p0
.end method
