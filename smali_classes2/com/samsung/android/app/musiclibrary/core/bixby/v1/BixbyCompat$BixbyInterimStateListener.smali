.class final Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyInterimStateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BixbyInterimStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyInterimStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$1;)V
    .locals 0

    .line 396
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyInterimStateListener;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;)V

    return-void
.end method


# virtual methods
.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 3

    .line 434
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParamFillingReceived() - paramFilling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 3

    .line 399
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InterimStateListener#onRuleCanceled() - ruleId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 3

    .line 422
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenStatesRequested() - mCurrentScreenState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyInterimStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    .line 423
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->access$700(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyInterimStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->access$700(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyInterimStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->access$700(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 3

    if-nez p1, :cond_0

    .line 405
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InterimStateListener#onStateReceived() - null state."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 408
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InterimStateListener#onStateReceived() - state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyInterimStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->access$300(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(I)V

    .line 412
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyInterimStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyInterimStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->access$500(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/StateConvertible;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/StateConvertible;->convert(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->access$402(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    .line 413
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyInterimStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyInterimStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->access$400(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->executeCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z

    return-void
.end method
