.class public abstract Lcom/facebook/share/model/ShareContent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/facebook/share/model/ShareContent;",
        "E:",
        "Lcom/facebook/share/model/ShareContent$Builder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder<",
        "TP;TE;>;"
    }
.end annotation


# instance fields
.field private contentUrl:Landroid/net/Uri;

.field private hashtag:Lcom/facebook/share/model/ShareHashtag;

.field private pageId:Ljava/lang/String;

.field private peopleIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private placeId:Ljava/lang/String;

.field private ref:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareContent$Builder;)Landroid/net/Uri;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/facebook/share/model/ShareContent$Builder;->contentUrl:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/ShareContent$Builder;)Ljava/util/List;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/facebook/share/model/ShareContent$Builder;->peopleIds:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/ShareContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/facebook/share/model/ShareContent$Builder;->placeId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/ShareContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/facebook/share/model/ShareContent$Builder;->pageId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/share/model/ShareContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/facebook/share/model/ShareContent$Builder;->ref:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/facebook/share/model/ShareContent$Builder;)Lcom/facebook/share/model/ShareHashtag;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/facebook/share/model/ShareContent$Builder;->hashtag:Lcom/facebook/share/model/ShareHashtag;

    return-object p0
.end method


# virtual methods
.method public readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)TE;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 236
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->getContentUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    .line 237
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->getPeopleIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareContent$Builder;->setPeopleIds(Ljava/util/List;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    .line 238
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->getPlaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareContent$Builder;->setPlaceId(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    .line 239
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->getPageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareContent$Builder;->setPageId(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    .line 240
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareContent;->getRef()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->setRef(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 0

    .line 154
    check-cast p1, Lcom/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")TE;"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/facebook/share/model/ShareContent$Builder;->contentUrl:Landroid/net/Uri;

    return-object p0
.end method

.method public setPageId(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/facebook/share/model/ShareContent$Builder;->pageId:Ljava/lang/String;

    return-object p0
.end method

.method public setPeopleIds(Ljava/util/List;)Lcom/facebook/share/model/ShareContent$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 181
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/facebook/share/model/ShareContent$Builder;->peopleIds:Ljava/util/List;

    return-object p0
.end method

.method public setPlaceId(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/facebook/share/model/ShareContent$Builder;->placeId:Ljava/lang/String;

    return-object p0
.end method

.method public setRef(Ljava/lang/String;)Lcom/facebook/share/model/ShareContent$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/facebook/share/model/ShareContent$Builder;->ref:Ljava/lang/String;

    return-object p0
.end method

.method public setShareHashtag(Lcom/facebook/share/model/ShareHashtag;)Lcom/facebook/share/model/ShareContent$Builder;
    .locals 0
    .param p1    # Lcom/facebook/share/model/ShareHashtag;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareHashtag;",
            ")TE;"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lcom/facebook/share/model/ShareContent$Builder;->hashtag:Lcom/facebook/share/model/ShareHashtag;

    return-object p0
.end method
