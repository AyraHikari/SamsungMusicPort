.class public final Lcom/facebook/share/internal/ShareFeedContent$Builder;
.super Lcom/facebook/share/model/ShareContent$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/ShareFeedContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$Builder<",
        "Lcom/facebook/share/internal/ShareFeedContent;",
        "Lcom/facebook/share/internal/ShareFeedContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private link:Ljava/lang/String;

.field private linkCaption:Ljava/lang/String;

.field private linkDescription:Ljava/lang/String;

.field private linkName:Ljava/lang/String;

.field private mediaSource:Ljava/lang/String;

.field private picture:Ljava/lang/String;

.field private toId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->toId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->link:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->linkName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->linkCaption:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->linkDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->picture:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->mediaSource:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/facebook/share/internal/ShareFeedContent;
    .locals 2

    .line 167
    new-instance v0, Lcom/facebook/share/internal/ShareFeedContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/internal/ShareFeedContent;-><init>(Lcom/facebook/share/internal/ShareFeedContent$Builder;Lcom/facebook/share/internal/ShareFeedContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->build()Lcom/facebook/share/internal/ShareFeedContent;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/internal/ShareFeedContent;)Lcom/facebook/share/internal/ShareFeedContent$Builder;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 176
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/ShareFeedContent$Builder;

    .line 177
    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareFeedContent;->getToId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setToId(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareFeedContent;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setLink(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareFeedContent;->getLinkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setLinkName(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareFeedContent;->getLinkCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setLinkCaption(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareFeedContent;->getLinkDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setLinkDescription(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareFeedContent;->getPicture()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setPicture(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareFeedContent;->getMediaSource()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setMediaSource(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .locals 0

    .line 120
    check-cast p1, Lcom/facebook/share/internal/ShareFeedContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->readFrom(Lcom/facebook/share/internal/ShareFeedContent;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 0

    .line 120
    check-cast p1, Lcom/facebook/share/internal/ShareFeedContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->readFrom(Lcom/facebook/share/internal/ShareFeedContent;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLink(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->link:Ljava/lang/String;

    return-object p0
.end method

.method public setLinkCaption(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->linkCaption:Ljava/lang/String;

    return-object p0
.end method

.method public setLinkDescription(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->linkDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setLinkName(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->linkName:Ljava/lang/String;

    return-object p0
.end method

.method public setMediaSource(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->mediaSource:Ljava/lang/String;

    return-object p0
.end method

.method public setPicture(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->picture:Ljava/lang/String;

    return-object p0
.end method

.method public setToId(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->toId:Ljava/lang/String;

    return-object p0
.end method
