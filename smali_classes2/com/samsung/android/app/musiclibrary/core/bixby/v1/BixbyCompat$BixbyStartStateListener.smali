.class final Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyStartStateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BixbyStartStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyStartStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$1;)V
    .locals 0

    .line 370
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyStartStateListener;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;)V

    return-void
.end method


# virtual methods
.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 3

    .line 373
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartStateListener#onRuleCanceled() - ruleId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 4

    if-nez p1, :cond_0

    .line 379
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StartStateListener#onStateReceived() - null state."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 382
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartStateListener#onStateReceived() - state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "499"

    const-string v2, "0026"

    .line 385
    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyStartStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->access$300(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(I)V

    .line 388
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyStartStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyStartStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->access$500(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/StateConvertible;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/StateConvertible;->convert(Lcom/samsung/android/sdk/bixby/data/State;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->access$402(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    .line 389
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyStartStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->access$600(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyStartStateListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->access$400(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;->execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z

    return-void
.end method
