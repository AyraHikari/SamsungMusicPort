.class final Lcom/facebook/share/internal/ShareInternalUtility$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/Utility$Mapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/ShareInternalUtility;->getStickerUrl(Lcom/facebook/share/model/ShareStoryContent;Ljava/util/UUID;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/internal/Utility$Mapper<",
        "Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/os/Bundle;
    .locals 3

    .line 785
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uri"

    .line 786
    invoke-virtual {p1}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->getAttachmentUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-virtual {p1}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->getOriginalUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/share/internal/ShareInternalUtility;->getUriExtension(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "extension"

    .line 789
    invoke-static {v0, v1, p1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 782
    check-cast p1, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/ShareInternalUtility$10;->apply(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
