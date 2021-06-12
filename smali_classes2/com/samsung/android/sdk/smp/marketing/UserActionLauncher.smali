.class public Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "UserActionLauncher"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 327
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 328
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 329
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 330
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 331
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "mid"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a:Ljava/lang/String;

    const-string p1, "fail to handle click event. mid null"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 38
    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v1, "type"

    .line 40
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ge v2, v3, :cond_3

    .line 44
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "click_link"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 46
    invoke-static {v3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a(Landroid/os/Bundle;)Lcom/samsung/android/sdk/smp/marketing/MarketingLink;

    move-result-object v3

    const-string v5, "ignore"

    .line 47
    iget-object v6, v3, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 48
    sget-object p1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->IGNORED:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-static {p0, v0, p1, v4}, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    const-string p1, "clear"

    .line 49
    invoke-static {p0, p1, v1, v0, v4}, Lcom/samsung/android/sdk/smp/common/BroadcastUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    new-instance p1, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->DISMISS:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {p1, v1, v4, v0}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->c(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    return-void

    .line 52
    :cond_1
    :try_start_1
    invoke-static {p0, v0, v3}, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 53
    sget-object p1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    iget-object v2, v3, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a:Ljava/lang/String;

    invoke-static {p0, v0, p1, v2}, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    const-string p1, "click"

    .line 54
    invoke-virtual {v3}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v1, v0, v2}, Lcom/samsung/android/sdk/smp/common/BroadcastUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    new-instance p1, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->DISMISS:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {p1, v1, v4, v0}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->c(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 61
    :cond_3
    :try_start_2
    sget-object p1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const-string v2, "fail_to_connect_target"

    invoke-static {p0, v0, p1, v2}, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    const-string p1, "click"

    .line 62
    invoke-static {p0, p1, v1, v0, v4}, Lcom/samsung/android/sdk/smp/common/BroadcastUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    new-instance p1, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->DISMISS:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {p1, v1, v4, v0}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->c(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    return-void

    :goto_1
    new-instance v1, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->DISMISS:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {v1, v2, v4, v0}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->c(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    throw p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 260
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 262
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a:Ljava/lang/String;

    const-string v0, "fail to call api. db open fail"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 268
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->i(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "url"

    .line 269
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    .line 279
    new-instance v0, Lcom/samsung/android/sdk/smp/network/request/MarketingLinkApiRequest;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/smp/network/request/MarketingLinkApiRequest;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3c

    .line 280
    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/network/request/NetworkRequest;I)Lcom/samsung/android/sdk/smp/network/NetworkResult;

    move-result-object v0

    .line 281
    iget-boolean v1, v0, Lcom/samsung/android/sdk/smp/network/NetworkResult;->a:Z

    if-eqz v1, :cond_1

    .line 282
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a:Ljava/lang/String;

    const-string v1, "API call Success"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    iget v0, v0, Lcom/samsung/android/sdk/smp/network/NetworkResult;->b:I

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 271
    :catch_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a:Ljava/lang/String;

    const-string v2, "fail to request api. invalid url"

    invoke-static {v1, p1, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 272
    invoke-static {p0, p1, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p0, "url"

    .line 273
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-void

    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    throw p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5

    .line 299
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x190

    const/4 v2, 0x0

    if-gt v1, p2, :cond_0

    const/16 v1, 0x1f4

    if-ge p2, v1, :cond_0

    .line 304
    :try_start_0
    invoke-static {p0, p1, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p0, "url"

    .line 305
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_2

    add-int/lit8 v1, p2, 0x1

    const/4 v3, 0x5

    if-lt p2, v3, :cond_1

    goto :goto_1

    .line 315
    :cond_1
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;I)Z

    .line 317
    new-instance p2, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->API_CALL:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2, p1}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x1b7740

    add-long/2addr v1, v3

    .line 317
    invoke-static {p0, p2, v1, v2}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    goto :goto_2

    .line 310
    :cond_2
    :goto_1
    :try_start_1
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a:Ljava/lang/String;

    const-string v1, "over retry count. do not retry api call"

    invoke-static {p2, p1, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {p0, p1, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p0, "url"

    .line 312
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;)Z
    .locals 2

    const-string v0, "app"

    .line 82
    iget-object v1, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->b(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "url"

    .line 84
    iget-object v1, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->c(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;)Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "intent"

    .line 86
    iget-object v1, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->d(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;)Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "api"

    .line 88
    iget-object v1, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->e(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http://"

    .line 160
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
    .locals 4

    const-string v0, "mid"

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a:Ljava/lang/String;

    const-string p1, "fail to handle clear. mid null"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 75
    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 76
    sget-object v1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->IGNORED:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 77
    new-instance v1, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v3, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->DISMISS:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {v1, v3, v2, v0}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->c(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    const-string v1, "clear"

    const-string v2, "type"

    .line 78
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1, v0}, Lcom/samsung/android/sdk/smp/common/BroadcastUtil;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 290
    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 291
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "url"

    .line 293
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 294
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;)Z
    .locals 4

    .line 95
    iget-object v0, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 96
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a:Ljava/lang/String;

    const-string p2, "fail to launch app. pkg null"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 103
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to launch app : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->g:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 107
    :cond_1
    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ppmtref"

    .line 109
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/high16 v2, 0x10000000

    .line 112
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 114
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 115
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "success to launch app : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 118
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to launch app : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->g:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "https://play.google.com/store/apps/details?"

    .line 164
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://play.google.com/store/apps/details?"

    .line 165
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

.method private static c(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;)Z
    .locals 7

    .line 124
    iget-object v0, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a:Ljava/lang/String;

    const-string p2, "fail to launch url. url null"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 129
    :cond_0
    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 131
    iget-object v2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    iget-object v2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b:Ljava/lang/String;

    const-string v4, "referrer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ppmtref="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v2, v4, v0}, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b:Ljava/lang/String;

    const-string v4, "ppmtref"

    .line 134
    invoke-static {v2, v4, v0}, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b:Ljava/lang/String;

    goto :goto_1

    .line 136
    :cond_2
    iget-object v2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    iget-object v2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b:Ljava/lang/String;

    const-string v4, "referrer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ppmtref="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v3, v0

    .line 142
    :goto_1
    iget-object v0, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 143
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 144
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ppmtref"

    .line 145
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const/high16 v0, 0x10000000

    .line 147
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 150
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 151
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "success to launch browser : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 154
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to launch browser:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "market://details?"

    .line 169
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;)Z
    .locals 5

    .line 173
    iget-object v0, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 174
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a:Ljava/lang/String;

    const-string p2, "fail to launch intent. pkg null"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 178
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 179
    iget-object v2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object v2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    iget-object v2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 183
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    :cond_1
    iget-object v2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 187
    iget-object v2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    :cond_2
    iget-object v2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 191
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->g:Ljava/lang/String;

    iget-object v4, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->h:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 194
    :cond_3
    iget-object v2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->i:Landroid/os/Bundle;

    if-eqz v2, :cond_4

    iget-object v2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->i:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 195
    iget-object v2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 198
    :cond_4
    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "ppmtref"

    .line 200
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    :cond_5
    :try_start_0
    iget p2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->d:I

    const/high16 v2, 0x10000000

    packed-switch p2, :pswitch_data_0

    .line 217
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a:Ljava/lang/String;

    goto :goto_1

    .line 213
    :pswitch_0
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 210
    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 206
    :pswitch_2
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 220
    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a:Ljava/lang/String;

    const-string p2, "success to launch intent"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :goto_1
    const-string p2, "fail to launch intent. invalid component"

    .line 217
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    .line 223
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to launch intent. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingLink;)Z
    .locals 4

    .line 229
    iget-object v0, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 230
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a:Ljava/lang/String;

    const-string p2, "fail to call api. url null"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 234
    :cond_0
    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    iget-object v2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b:Ljava/lang/String;

    const-string v3, "ppmtref"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b:Ljava/lang/String;

    .line 239
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_2

    .line 241
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a:Ljava/lang/String;

    const-string p2, "fail to call api. db open fail"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 245
    :cond_2
    :try_start_0
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;I)Z

    const-string v2, "url"

    .line 246
    iget-object p2, p2, Lcom/samsung/android/sdk/smp/marketing/MarketingLink;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, p2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 247
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a:Ljava/lang/String;

    const-string p2, "fail to call api. db update fail"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return v1

    .line 250
    :cond_3
    :try_start_1
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_API:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    .line 255
    new-instance p2, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->API_CALL:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, p1}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->b(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 252
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    throw p0
.end method
