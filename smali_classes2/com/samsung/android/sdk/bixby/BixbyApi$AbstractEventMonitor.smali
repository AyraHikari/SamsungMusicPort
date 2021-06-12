.class public abstract Lcom/samsung/android/sdk/bixby/BixbyApi$AbstractEventMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractEventMonitor"
.end annotation


# virtual methods
.method public a()V
    .locals 2

    .line 589
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractEventMonitor onServiceCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .line 575
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->j()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AbstractEventMonitor onServiceBound()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;)V
    .locals 1

    .line 563
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->j()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AbstractEventMonitor onPathRuleStarted()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b()V
    .locals 2

    .line 596
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbstractEventMonitor onServiceDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 1

    .line 582
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->j()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AbstractEventMonitor onServiceUnbound()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
