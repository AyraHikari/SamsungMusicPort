.class public Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "CardActionLauncher"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 343
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 344
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 345
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 346
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 347
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "mid"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "targetid"

    .line 34
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a:Ljava/lang/String;

    const-string p1, "fail to handle click event. mid null"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 41
    :cond_0
    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->c(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_3

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "card_action"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 46
    invoke-static {v3}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a(Landroid/os/Bundle;)Lcom/samsung/android/sdk/ppmt/content/CardAction;

    move-result-object v3

    const-string v4, "ignore"

    .line 47
    iget-object v5, v3, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    sget-object p1, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->IGNORED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    .line 51
    :cond_1
    invoke-static {p0, v0, v3}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardAction;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 52
    sget-object p1, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    iget-object v2, v3, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a:Ljava/lang/String;

    invoke-static {p0, v0, v1, p1, v2}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_3
    sget-object p1, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v2, "fail_to_connect_target"

    invoke-static {p0, v0, v1, p1, v2}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 264
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 266
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to call api. db null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 272
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->j(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "url"

    .line 273
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    .line 283
    new-instance v0, Lcom/samsung/android/sdk/ppmt/network/request/ApiCardActionRequest;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/ppmt/network/request/ApiCardActionRequest;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3c

    .line 284
    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;I)Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    move-result-object v0

    .line 285
    iget-boolean v1, v0, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->a:Z

    if-eqz v1, :cond_1

    .line 286
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] API call Success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_1
    iget v0, v0, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->b:I

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 275
    :catch_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] fail to request api. invalid url"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->c(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "url"

    .line 277
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    throw p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    .line 303
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0x190

    if-gt v1, p2, :cond_0

    const/16 v1, 0x1f4

    if-lt p2, v1, :cond_4

    :cond_0
    const/16 v1, 0x3f0

    if-eq p2, v1, :cond_4

    const/16 v1, 0x3f3

    if-ne p2, v1, :cond_1

    goto/16 :goto_0

    .line 314
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->g(Ljava/lang/String;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 316
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] fail to get retrycount. do not retry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->c(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "url"

    .line 318
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    :cond_2
    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x5

    if-lt p2, v2, :cond_3

    .line 322
    :try_start_1
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] over retry count. do not retry api call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->c(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "url"

    .line 324
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    .line 327
    :cond_3
    :try_start_2
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;I)Z

    .line 329
    new-instance p2, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    invoke-direct {p2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->API_CALL:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 330
    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    .line 331
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    const-string v1, "mid"

    .line 332
    invoke-virtual {p2, v1, p1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p1

    .line 333
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    move-result-object p1

    .line 334
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    add-long/2addr v1, v3

    invoke-interface {p2, p0, p1, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;J)V

    goto :goto_1

    .line 310
    :cond_4
    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->c(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "url"

    .line 311
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 337
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    throw p0

    :cond_5
    :goto_2
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardAction;)Z
    .locals 2

    const-string v0, "app"

    .line 76
    iget-object v1, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->b(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardAction;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "url"

    .line 78
    iget-object v1, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->c(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardAction;)Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "intent"

    .line 80
    iget-object v1, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->d(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardAction;)Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "api"

    .line 82
    iget-object v1, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->e(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardAction;)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http://"

    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "mid"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "targetid"

    .line 64
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a:Ljava/lang/String;

    const-string p1, "fail to handle clear event. mid null"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_0
    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    sget-object v1, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->IGNORED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 294
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 295
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "url"

    .line 297
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardAction;)Z
    .locals 4

    .line 89
    iget-object v0, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 90
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to launch app. pkg null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 94
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 97
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to launch app : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 101
    :cond_1
    iget-object v2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "com.samsung.android.sdk.ppmt.APP_PARAM"

    .line 102
    iget-object v3, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    :cond_2
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ppmtref"

    .line 107
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const/high16 v2, 0x10000000

    .line 110
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 113
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] success to launch app : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 116
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to launch app : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->h:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "https://play.google.com/store/apps/details?"

    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://play.google.com/store/apps/details?"

    .line 163
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardAction;)Z
    .locals 7

    .line 122
    iget-object v0, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 123
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to start browser. url null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 127
    :cond_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 129
    iget-object v2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    iget-object v2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b:Ljava/lang/String;

    const-string v4, "referrer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ppmtref="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v2, v4, v0}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b:Ljava/lang/String;

    const-string v4, "ppmtref"

    .line 132
    invoke-static {v2, v4, v0}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b:Ljava/lang/String;

    goto :goto_1

    .line 134
    :cond_2
    iget-object v2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 135
    iget-object v2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b:Ljava/lang/String;

    const-string v4, "referrer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ppmtref="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v3, v0

    .line 140
    :goto_1
    iget-object v0, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 141
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ppmtref"

    .line 143
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const/high16 v0, 0x10000000

    .line 145
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 149
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] success to launch browser : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 152
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to launch browser:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "market://details?"

    .line 167
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardAction;)Z
    .locals 5

    .line 171
    iget-object v0, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 172
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to launch intent. pkg null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 176
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 177
    iget-object v2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    iget-object v2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 180
    iget-object v2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 181
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    :cond_1
    iget-object v2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 185
    iget-object v2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    :cond_2
    iget-object v2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 189
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->h:Ljava/lang/String;

    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->i:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 192
    :cond_3
    iget-object v2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->j:Landroid/os/Bundle;

    if-eqz v2, :cond_4

    iget-object v2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->j:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 193
    iget-object v2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->j:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 196
    :cond_4
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "ppmtref"

    .line 198
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    :cond_5
    :try_start_0
    iget p2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->e:I

    const/high16 v2, 0x10000000

    packed-switch p2, :pswitch_data_0

    .line 215
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a:Ljava/lang/String;

    goto :goto_1

    .line 211
    :pswitch_0
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 208
    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 204
    :pswitch_2
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 218
    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] success to launch intent"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 215
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] fail to launch intent. invalid component"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 221
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to launch intent. "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardAction;)Z
    .locals 4

    .line 227
    iget-object v0, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 228
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to call api. url null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 232
    :cond_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 234
    iget-object v2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b:Ljava/lang/String;

    const-string v3, "ppmtref"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b:Ljava/lang/String;

    .line 237
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_2

    .line 239
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to call api. db null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 243
    :cond_2
    :try_start_0
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;I)Z

    const-string v2, "url"

    .line 244
    iget-object p2, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, p2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 245
    sget-object p0, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to call api. db update fail"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return v1

    .line 248
    :cond_3
    :try_start_1
    sget-object p2, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    .line 253
    new-instance p2, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    invoke-direct {p2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->API_CALL:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 254
    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    .line 255
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    const-string v0, "mid"

    .line 256
    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p1

    .line 257
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    move-result-object p1

    .line 258
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 250
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    throw p0
.end method
