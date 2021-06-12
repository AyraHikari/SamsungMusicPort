.class public Lcom/samsung/android/sdk/smp/data/AckManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 40
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->f()Ljava/util/ArrayList;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 42
    new-instance v2, Lcom/samsung/android/sdk/smp/network/request/AckRequest;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/sdk/smp/network/request/AckRequest;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    const/16 v3, 0x3c

    invoke-static {p0, v2, v3}, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/network/request/NetworkRequest;I)Lcom/samsung/android/sdk/smp/network/NetworkResult;

    move-result-object v2

    .line 43
    iget-boolean v3, v2, Lcom/samsung/android/sdk/smp/network/NetworkResult;->a:Z

    if-eqz v3, :cond_2

    .line 44
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 46
    :cond_2
    iget v3, v2, Lcom/samsung/android/sdk/smp/network/NetworkResult;->b:I

    const/16 v4, 0x190

    if-lt v3, v4, :cond_3

    iget v2, v2, Lcom/samsung/android/sdk/smp/network/NetworkResult;->b:I

    const/16 v3, 0x1f4

    if-ge v2, v3, :cond_3

    .line 48
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->g()V

    const/4 v1, 0x5

    .line 52
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(I)V

    .line 53
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->f()Ljava/util/ArrayList;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 55
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "is_retry"

    const/4 v3, 0x1

    .line 56
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    new-instance v2, Lcom/samsung/android/sdk/smp/task/STask;

    sget-object v3, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->SEND_ACK:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/sdk/smp/task/STask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x1b7740

    add-long/2addr v3, v5

    invoke-static {p0, v2, v3, v4}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;J)V

    .line 63
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;JLjava/lang/String;)J

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method
