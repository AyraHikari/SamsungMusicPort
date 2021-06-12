.class Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;
.super Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/VideoUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinishUploadWorkItem"
.end annotation


# static fields
.field static final transientErrorCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 488
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem$1;

    invoke-direct {v0}, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem$1;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->transientErrorCodes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .locals 0

    .line 493
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    return-void
.end method


# virtual methods
.method protected enqueueRetry(I)V
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    invoke-static {v0, p1}, Lcom/facebook/share/internal/VideoUploader;->access$700(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    return-void
.end method

.method public getParameters()Landroid/os/Bundle;
    .locals 3

    .line 498
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 499
    iget-object v1, p0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v1, v1, Lcom/facebook/share/internal/VideoUploader$UploadContext;->params:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v1, v1, Lcom/facebook/share/internal/VideoUploader$UploadContext;->params:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    const-string v1, "upload_phase"

    const-string v2, "finish"

    .line 502
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "upload_session_id"

    .line 503
    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v2, v2, Lcom/facebook/share/internal/VideoUploader$UploadContext;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    .line 504
    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v2, v2, Lcom/facebook/share/internal/VideoUploader$UploadContext;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "description"

    .line 505
    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v2, v2, Lcom/facebook/share/internal/VideoUploader$UploadContext;->description:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ref"

    .line 506
    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v2, v2, Lcom/facebook/share/internal/VideoUploader$UploadContext;->ref:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getTransientErrorCodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 529
    sget-object v0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->transientErrorCodes:Ljava/util/Set;

    return-object v0
.end method

.method protected handleError(Lcom/facebook/FacebookException;)V
    .locals 4

    const-string v0, "Video \'%s\' failed to finish uploading"

    const/4 v1, 0x1

    .line 523
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v2, v2, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v0, v1}, Lcom/facebook/share/internal/VideoUploader;->access$400(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->endUploadWithFailure(Lcom/facebook/FacebookException;)V

    return-void
.end method

.method protected handleSuccess(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "success"

    .line 514
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 515
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v0, v0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->issueResponseOnMainThread(Lcom/facebook/FacebookException;Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :cond_0
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Unexpected error in server response"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->handleError(Lcom/facebook/FacebookException;)V

    :goto_0
    return-void
.end method
