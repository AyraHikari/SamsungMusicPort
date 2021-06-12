.class public final Lcom/facebook/share/model/ShareVideoContent$Builder;
.super Lcom/facebook/share/model/ShareContent$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareVideoContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$Builder<",
        "Lcom/facebook/share/model/ShareVideoContent;",
        "Lcom/facebook/share/model/ShareVideoContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private contentDescription:Ljava/lang/String;

.field private contentTitle:Ljava/lang/String;

.field private previewPhoto:Lcom/facebook/share/model/SharePhoto;

.field private video:Lcom/facebook/share/model/ShareVideo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareVideoContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/facebook/share/model/ShareVideoContent$Builder;->contentDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/ShareVideoContent$Builder;)Ljava/lang/String;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/facebook/share/model/ShareVideoContent$Builder;->contentTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/ShareVideoContent$Builder;)Lcom/facebook/share/model/SharePhoto;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/facebook/share/model/ShareVideoContent$Builder;->previewPhoto:Lcom/facebook/share/model/SharePhoto;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/ShareVideoContent$Builder;)Lcom/facebook/share/model/ShareVideo;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/facebook/share/model/ShareVideoContent$Builder;->video:Lcom/facebook/share/model/ShareVideo;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareVideoContent;
    .locals 2

    .line 180
    new-instance v0, Lcom/facebook/share/model/ShareVideoContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareVideoContent;-><init>(Lcom/facebook/share/model/ShareVideoContent$Builder;Lcom/facebook/share/model/ShareVideoContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent$Builder;->build()Lcom/facebook/share/model/ShareVideoContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .locals 0

    .line 124
    check-cast p1, Lcom/facebook/share/model/ShareVideoContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->readFrom(Lcom/facebook/share/model/ShareVideoContent;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 0

    .line 124
    check-cast p1, Lcom/facebook/share/model/ShareVideoContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->readFrom(Lcom/facebook/share/model/ShareVideoContent;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public readFrom(Lcom/facebook/share/model/ShareVideoContent;)Lcom/facebook/share/model/ShareVideoContent$Builder;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 189
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareVideoContent$Builder;

    .line 190
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getPreviewPhoto()Lcom/facebook/share/model/SharePhoto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->setPreviewPhoto(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->setVideo(Lcom/facebook/share/model/ShareVideo;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareVideoContent$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 137
    iput-object p1, p0, Lcom/facebook/share/model/ShareVideoContent$Builder;->contentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareVideoContent$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 147
    iput-object p1, p0, Lcom/facebook/share/model/ShareVideoContent$Builder;->contentTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setPreviewPhoto(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/ShareVideoContent$Builder;
    .locals 1
    .param p1    # Lcom/facebook/share/model/SharePhoto;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 157
    :cond_0
    new-instance v0, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    .line 160
    invoke-virtual {v0, p1}, Lcom/facebook/share/model/SharePhoto$Builder;->readFrom(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/facebook/share/model/ShareVideoContent$Builder;->previewPhoto:Lcom/facebook/share/model/SharePhoto;

    return-object p0
.end method

.method public setVideo(Lcom/facebook/share/model/ShareVideo;)Lcom/facebook/share/model/ShareVideoContent$Builder;
    .locals 1
    .param p1    # Lcom/facebook/share/model/ShareVideo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-object p0

    .line 174
    :cond_0
    new-instance v0, Lcom/facebook/share/model/ShareVideo$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareVideo$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareVideo$Builder;->readFrom(Lcom/facebook/share/model/ShareVideo;)Lcom/facebook/share/model/ShareVideo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideo$Builder;->build()Lcom/facebook/share/model/ShareVideo;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/ShareVideoContent$Builder;->video:Lcom/facebook/share/model/ShareVideo;

    return-object p0
.end method
