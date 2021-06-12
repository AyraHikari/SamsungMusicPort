.class Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->requestUserConfirm(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager$OnUserConfirmListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

.field final synthetic val$cancelNlg:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

.field final synthetic val$listener:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager$OnUserConfirmListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager$OnUserConfirmListener;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$1;->val$listener:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager$OnUserConfirmListener;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$1;->val$cancelNlg:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmResult(Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;)V
    .locals 5

    .line 310
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->YES:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 311
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfirmResult() - confirmResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", positive: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 314
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$1;->val$listener:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager$OnUserConfirmListener;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager$OnUserConfirmListener;->onPositiveReceived()V

    goto :goto_1

    .line 316
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$1;->val$cancelNlg:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->sendResponse(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    :goto_1
    return-void
.end method
