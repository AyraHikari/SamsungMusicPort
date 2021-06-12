.class public final Lcom/facebook/share/model/ShareLinkContent$Builder;
.super Lcom/facebook/share/model/ShareContent$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareLinkContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$Builder<",
        "Lcom/facebook/share/model/ShareLinkContent;",
        "Lcom/facebook/share/model/ShareLinkContent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ShareLinkContent$Builder"


# instance fields
.field private contentDescription:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private contentTitle:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private imageUrl:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private quote:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareLinkContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->contentDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/ShareLinkContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->contentTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/ShareLinkContent$Builder;)Landroid/net/Uri;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->imageUrl:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/ShareLinkContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->quote:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareLinkContent;
    .locals 2

    .line 192
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareLinkContent;-><init>(Lcom/facebook/share/model/ShareLinkContent$Builder;Lcom/facebook/share/model/ShareLinkContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .locals 0

    .line 131
    check-cast p1, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->readFrom(Lcom/facebook/share/model/ShareLinkContent;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/facebook/share/model/ShareLinkContent;)Lcom/facebook/share/model/ShareLinkContent$Builder;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 201
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 202
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 203
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    .line 205
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent;->getQuote()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setQuote(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 0

    .line 131
    check-cast p1, Lcom/facebook/share/model/ShareLinkContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->readFrom(Lcom/facebook/share/model/ShareLinkContent;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    sget-object p1, Lcom/facebook/share/model/ShareLinkContent$Builder;->TAG:Ljava/lang/String;

    const-string v0, "This method does nothing. ContentDescription is deprecated in Graph API 2.9."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    sget-object p1, Lcom/facebook/share/model/ShareLinkContent$Builder;->TAG:Ljava/lang/String;

    const-string v0, "This method does nothing. ContentTitle is deprecated in Graph API 2.9."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    sget-object p1, Lcom/facebook/share/model/ShareLinkContent$Builder;->TAG:Ljava/lang/String;

    const-string v0, "This method does nothing. ImageUrl is deprecated in Graph API 2.9."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public setQuote(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 186
    iput-object p1, p0, Lcom/facebook/share/model/ShareLinkContent$Builder;->quote:Ljava/lang/String;

    return-object p0
.end method
