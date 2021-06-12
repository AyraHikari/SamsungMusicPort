.class final Lcom/facebook/share/internal/ShareInternalUtility$9;
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
        "Lcom/facebook/share/model/SharePhoto;",
        "Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$appCallId:Ljava/util/UUID;


# direct methods
.method constructor <init>(Ljava/util/UUID;)V
    .locals 0

    .line 772
    iput-object p1, p0, Lcom/facebook/share/internal/ShareInternalUtility$9;->val$appCallId:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/facebook/share/internal/ShareInternalUtility$9;->val$appCallId:Ljava/util/UUID;

    invoke-static {v0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->access$000(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 772
    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/ShareInternalUtility$9;->apply(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object p1

    return-object p1
.end method
