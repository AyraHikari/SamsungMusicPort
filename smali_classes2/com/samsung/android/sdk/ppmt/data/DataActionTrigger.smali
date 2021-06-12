.class public Lcom/samsung/android/sdk/ppmt/data/DataActionTrigger;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 46
    sget-object v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->SEND_TRACKING_DATA_IF_EXIST:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Landroid/content/Context;J)V
    .locals 2

    .line 97
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->v()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 103
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_TRACKING_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    .line 108
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job;

    move-result-object v0

    .line 110
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v1

    invoke-interface {v1, p0, v0, p1, p2}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;J)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .line 81
    sget-object v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->UPDATE_N_SEND_REG_DATA_FOR_INIT:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;Landroid/os/Bundle;)V

    return-void
.end method

.method private static b(Landroid/content/Context;J)V
    .locals 2

    .line 122
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->v()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 127
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 128
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_UPDATED_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    .line 133
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job;

    move-result-object v0

    .line 135
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v1

    invoke-interface {v1, p0, v0, p1, p2}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;J)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    .line 85
    sget-object v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->UPDATE_N_SEND_IMM_REG_DATA:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;Landroid/os/Bundle;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 4

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x2bf20

    add-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/data/DataActionTrigger;->a(Landroid/content/Context;J)V

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 2

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/data/DataActionTrigger;->a(Landroid/content/Context;J)V

    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 4

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x2bf20

    add-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/data/DataActionTrigger;->b(Landroid/content/Context;J)V

    return-void
.end method

.method public static g(Landroid/content/Context;)V
    .locals 2

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/data/DataActionTrigger;->b(Landroid/content/Context;J)V

    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 4

    .line 143
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->d(Z)V

    .line 145
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_DEREG_REQUEST:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    .line 146
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job;

    move-result-object v0

    .line 148
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, p0, v0, v2, v3}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;J)V

    return-void
.end method
