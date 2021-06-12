.class Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$ActionHandlerWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$ActionHandlerWrapper;->executeAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$ActionHandlerWrapper;

.field final synthetic val$responseCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$ActionHandlerWrapper;Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$ActionHandlerWrapper$1;->this$1:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$ActionHandlerWrapper;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$ActionHandlerWrapper$1;->val$responseCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 103
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onComplete() - result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/AbsBixbyManager$ActionHandlerWrapper$1;->val$responseCallback:Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/bixby2/action/ResponseCallback;->a(Ljava/lang/String;)V

    return-void
.end method
