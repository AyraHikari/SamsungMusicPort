.class Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ppmt/processor/MessageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 94
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 149
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/data/DataActionTrigger;->e(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "data_type"

    .line 140
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data_value"

    .line 141
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 143
    invoke-static {p1, v0, p2}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 144
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/data/DataActionTrigger;->d(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .line 202
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->b(Landroid/content/Context;)I

    .line 204
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->B()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 206
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->SEND_FORCE_REG_DATA:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    .line 207
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job;

    move-result-object v0

    .line 209
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/data/DataActionTrigger;->g(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "data_value"

    .line 155
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data_arg1"

    .line 156
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "data_arg2"

    .line 157
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 159
    invoke-static {p1, v0, v1, p2}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Z

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 0

    .line 216
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->b(Landroid/content/Context;)I

    .line 217
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/data/DataActionTrigger;->g(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "data_value"

    .line 163
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "data_arg1"

    .line 164
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_0

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 167
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 169
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->f()Z

    move-result v3

    if-eq v3, v0, :cond_1

    .line 170
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "bAgreement"

    .line 171
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-static {p1, v3}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a(Landroid/content/Context;Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(J)V

    .line 174
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/data/DataActionTrigger;->g(Landroid/content/Context;)V

    .line 177
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    :cond_2
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 3

    .line 221
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;->HANDLE_INCOMPLETE_PUSH_EVENTS:Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;

    .line 223
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CommonEvent;)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object v0

    const-string v1, "boot_comp"

    const/4 v2, 0x0

    .line 224
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a(Ljava/lang/String;Z)Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/schedule/Job$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/Job;

    move-result-object v0

    .line 226
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    :cond_0
    return-void
.end method

.method private d(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    const-string v0, "data_value"

    .line 183
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 184
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a(Landroid/content/Context;Ljava/util/HashMap;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 185
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/data/DataActionTrigger;->f(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 188
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to save custom data. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private e(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "data_value"

    .line 193
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 196
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->a(Landroid/content/Context;J)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 197
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/data/DataActionTrigger;->f(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private f(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "data_value"

    .line 231
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 233
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;->d(Landroid/content/Context;)V

    .line 235
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    .line 237
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/PpmtID;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 238
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ppmtid : null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 242
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->v()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 246
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->n()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->o()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 251
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->u()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 252
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/data/DataActionTrigger;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 254
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/data/DataActionTrigger;->b(Landroid/content/Context;)V

    .line 256
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/data/DataActionTrigger;->a(Landroid/content/Context;)V

    return-void

    .line 247
    :cond_4
    :goto_1
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "pid/ptype : null"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_c

    .line 100
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 102
    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v1

    if-nez v1, :cond_0

    .line 104
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to handle message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". db null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 108
    :cond_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 109
    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object v3, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->DELETE_DB_DATA:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->d(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 113
    :cond_2
    sget-object v3, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->SAVE_N_SEND_TRACKING_DATA:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 115
    :cond_3
    sget-object v3, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->SEND_TRACKING_DATA_IF_EXIST:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 116
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;->a(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 117
    :cond_4
    sget-object v3, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->SAVE_N_SEND_APPUSAGE:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 118
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 119
    :cond_5
    sget-object v3, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->SAVE_N_SEND_CUSTOM_DATA:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 120
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;->d(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_1

    .line 121
    :cond_6
    sget-object v3, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->SAVE_N_SEND_DAU:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 122
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;->e(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_1

    .line 123
    :cond_7
    sget-object v3, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->SAVE_N_SEND_MARKETING_AGREE:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 124
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;->c(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_1

    .line 125
    :cond_8
    sget-object v3, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->UPDATE_N_SEND_REG_DATA_FOR_INIT:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 126
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;->b(Landroid/content/Context;)V

    goto :goto_1

    .line 127
    :cond_9
    sget-object v3, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->UPDATE_N_SEND_IMM_REG_DATA:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 128
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;->c(Landroid/content/Context;)V

    goto :goto_1

    .line 129
    :cond_a
    sget-object v3, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->INITIALIZE:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 130
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$MessageHandler;->f(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 133
    :cond_b
    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    .line 136
    :cond_c
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/processor/MessageController;->a(I)V

    return-void
.end method
