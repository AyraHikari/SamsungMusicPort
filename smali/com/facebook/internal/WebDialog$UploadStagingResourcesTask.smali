.class Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadStagingResourcesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private exceptions:[Ljava/lang/Exception;

.field private parameters:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/facebook/internal/WebDialog;


# direct methods
.method constructor <init>(Lcom/facebook/internal/WebDialog;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 809
    iput-object p2, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->action:Ljava/lang/String;

    .line 810
    iput-object p3, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->parameters:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$800(Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;)[Ljava/lang/Exception;
    .locals 0

    .line 803
    iget-object p0, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->exceptions:[Ljava/lang/Exception;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 803
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 9

    .line 815
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->parameters:Landroid/os/Bundle;

    const-string v0, "media"

    .line 816
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 817
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 818
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Exception;

    iput-object v1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->exceptions:[Ljava/lang/Exception;

    .line 820
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 821
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 824
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 826
    :try_start_0
    array-length v7, p1

    if-ge v4, v7, :cond_3

    .line 827
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 828
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask;

    .line 829
    invoke-virtual {v0, v6}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_1

    :cond_0
    return-object v5

    .line 833
    :cond_1
    aget-object v7, p1, v4

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 835
    invoke-static {v7}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 836
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    .line 837
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2

    .line 840
    :cond_2
    new-instance v8, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;

    invoke-direct {v8, p0, v0, v4, v1}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;-><init>(Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;[Ljava/lang/String;ILjava/util/concurrent/CountDownLatch;)V

    .line 869
    invoke-static {v3, v7, v8}, Lcom/facebook/share/internal/ShareInternalUtility;->newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Landroid/net/Uri;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v7

    .line 872
    invoke-virtual {v7}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v7

    .line 873
    invoke-virtual {v2, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 875
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 877
    :catch_0
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask;

    .line 878
    invoke-virtual {v0, v6}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_3

    :cond_4
    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 803
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 4

    .line 888
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-static {v0}, Lcom/facebook/internal/WebDialog;->access$300(Lcom/facebook/internal/WebDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 890
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->exceptions:[Ljava/lang/Exception;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 892
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {p1, v3}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 898
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Failed to stage photos for web dialog"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    return-void

    .line 902
    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 903
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 904
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Failed to stage photos for web dialog"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    return-void

    .line 908
    :cond_3
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->parameters:Landroid/os/Bundle;

    const-string v1, "media"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putJSONValueInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 914
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDialogAuthority()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 915
    invoke-static {}, Lcom/facebook/FacebookSdk;->getGraphApiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dialog/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->parameters:Landroid/os/Bundle;

    .line 913
    invoke-static {p1, v0, v1}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p1

    .line 918
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/facebook/internal/WebDialog;->access$902(Lcom/facebook/internal/WebDialog;Ljava/lang/String;)Ljava/lang/String;

    .line 919
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-static {p1}, Lcom/facebook/internal/WebDialog;->access$600(Lcom/facebook/internal/WebDialog;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 920
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/facebook/internal/WebDialog;->access$1000(Lcom/facebook/internal/WebDialog;I)V

    return-void
.end method
