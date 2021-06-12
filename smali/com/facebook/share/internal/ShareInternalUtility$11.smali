.class final Lcom/facebook/share/internal/ShareInternalUtility$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/Utility$Mapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/ShareInternalUtility;->getBackgroundAssetMediaInfo(Lcom/facebook/share/model/ShareStoryContent;Ljava/util/UUID;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/internal/Utility$Mapper<",
        "Lcom/facebook/share/model/ShareMedia;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$appCallId:Ljava/util/UUID;

.field final synthetic val$attachments:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/UUID;Ljava/util/List;)V
    .locals 0

    .line 816
    iput-object p1, p0, Lcom/facebook/share/internal/ShareInternalUtility$11;->val$appCallId:Ljava/util/UUID;

    iput-object p2, p0, Lcom/facebook/share/internal/ShareInternalUtility$11;->val$attachments:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/facebook/share/model/ShareMedia;)Landroid/os/Bundle;
    .locals 3

    .line 819
    iget-object v0, p0, Lcom/facebook/share/internal/ShareInternalUtility$11;->val$appCallId:Ljava/util/UUID;

    .line 820
    invoke-static {v0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->access$000(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v0

    .line 821
    iget-object v1, p0, Lcom/facebook/share/internal/ShareInternalUtility$11;->val$attachments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 822
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 825
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMedia;->getMediaType()Lcom/facebook/share/model/ShareMedia$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMedia$Type;->name()Ljava/lang/String;

    move-result-object p1

    .line 823
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "uri"

    .line 828
    invoke-virtual {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->getAttachmentUrl()Ljava/lang/String;

    move-result-object v2

    .line 826
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    invoke-virtual {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->getOriginalUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/share/internal/ShareInternalUtility;->getUriExtension(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "extension"

    .line 831
    invoke-static {v1, v0, p1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 816
    check-cast p1, Lcom/facebook/share/model/ShareMedia;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/ShareInternalUtility$11;->apply(Lcom/facebook/share/model/ShareMedia;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
