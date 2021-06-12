.class public Lkr/co/cashslide/CashslideIntentService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CashslideSDK"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    const-class v0, Lkr/co/cashslide/CashslideIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private doRecommend(Landroid/content/Context;)V
    .locals 3

    .line 36
    :try_start_0
    new-instance v0, Lkr/co/cashslide/ActionCache;

    invoke-direct {v0, p1}, Lkr/co/cashslide/ActionCache;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {v0}, Lkr/co/cashslide/ActionCache;->getRecommendAppId()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lkr/co/cashslide/Cashslide;

    invoke-direct {v1, p1, v0}, Lkr/co/cashslide/Cashslide;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lkr/co/cashslide/Cashslide;->recommend()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CashslideSDK"

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 19
    invoke-virtual {p0}, Lkr/co/cashslide/CashslideIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 20
    invoke-static {p1}, Lkr/co/cashslide/ReferrerReceiver;->getRecommendNickname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 25
    invoke-virtual {p0}, Lkr/co/cashslide/CashslideIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lkr/co/cashslide/CashslideIntentService;->doRecommend(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
