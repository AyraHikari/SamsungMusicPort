.class public Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;
.super Lcom/facebook/share/model/ShareContent$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$Builder<",
        "Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;",
        "Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private button:Lcom/facebook/share/model/ShareMessengerActionButton;

.field private url:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;)Landroid/net/Uri;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->url:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;)Lcom/facebook/share/model/ShareMessengerActionButton;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;
    .locals 2

    .line 127
    new-instance v0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;-><init>(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->build()Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .locals 0

    .line 92
    check-cast p1, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->readFrom(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 120
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;

    .line 121
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->setUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->setButton(Lcom/facebook/share/model/ShareMessengerActionButton;)Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 0

    .line 92
    check-cast p1, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->readFrom(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setButton(Lcom/facebook/share/model/ShareMessengerActionButton;)Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-object p0
.end method

.method public setUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent$Builder;->url:Landroid/net/Uri;

    return-object p0
.end method
