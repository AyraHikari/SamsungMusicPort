.class public final Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;
.super Lcom/facebook/share/model/ShareMessengerActionButton$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMessengerURLActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareMessengerActionButton$Builder<",
        "Lcom/facebook/share/model/ShareMessengerURLActionButton;",
        "Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private fallbackUrl:Landroid/net/Uri;

.field private isMessengerExtensionURL:Z

.field private shouldHideWebviewShareButton:Z

.field private url:Landroid/net/Uri;

.field private webviewHeightRatio:Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/facebook/share/model/ShareMessengerActionButton$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;)Landroid/net/Uri;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->url:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;)Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->isMessengerExtensionURL:Z

    return p0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;)Landroid/net/Uri;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->fallbackUrl:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;)Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->webviewHeightRatio:Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;)Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->shouldHideWebviewShareButton:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareMessengerURLActionButton;
    .locals 2

    .line 198
    new-instance v0, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareMessengerURLActionButton;-><init>(Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;Lcom/facebook/share/model/ShareMessengerURLActionButton$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->build()Lcom/facebook/share/model/ShareMessengerURLActionButton;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareMessengerActionButton;)Lcom/facebook/share/model/ShareMessengerActionButton$Builder;
    .locals 0

    .line 125
    check-cast p1, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->readFrom(Lcom/facebook/share/model/ShareMessengerURLActionButton;)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/facebook/share/model/ShareMessengerURLActionButton;)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 189
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->setUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getIsMessengerExtensionURL()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->setIsMessengerExtensionURL(Z)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getFallbackUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->setFallbackUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getWebviewHeightRatio()Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->setWebviewHeightRatio(Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getShouldHideWebviewShareButton()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->setShouldHideWebviewShareButton(Z)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 0

    .line 125
    check-cast p1, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->readFrom(Lcom/facebook/share/model/ShareMessengerURLActionButton;)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFallbackUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 158
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->fallbackUrl:Landroid/net/Uri;

    return-object p0
.end method

.method public setIsMessengerExtensionURL(Z)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->isMessengerExtensionURL:Z

    return-object p0
.end method

.method public setShouldHideWebviewShareButton(Z)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->shouldHideWebviewShareButton:Z

    return-object p0
.end method

.method public setUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 138
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->url:Landroid/net/Uri;

    return-object p0
.end method

.method public setWebviewHeightRatio(Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;)Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton$Builder;->webviewHeightRatio:Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;

    return-object p0
.end method
