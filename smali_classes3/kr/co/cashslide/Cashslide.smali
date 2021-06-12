.class public Lkr/co/cashslide/Cashslide;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkr/co/cashslide/Cashslide$RetentionTask;,
        Lkr/co/cashslide/Cashslide$RecommendTask;,
        Lkr/co/cashslide/Cashslide$MissionCompletedTask;,
        Lkr/co/cashslide/Cashslide$AppFirstLaunchedTask;
    }
.end annotation


# static fields
.field private static final ACTION_REWARD_NOTI:Ljava/lang/String; = "kr.co.cashslide.REWARD_NOTIFICATION"

.field private static final LOG_TAG:Ljava/lang/String; = "CashslideSDK"


# instance fields
.field private cache:Lkr/co/cashslide/ActionCache;

.field private mAppId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private request:Lkr/co/cashslide/Request;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lkr/co/cashslide/Cashslide;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lkr/co/cashslide/Cashslide;->mAppId:Ljava/lang/String;

    .line 22
    new-instance p1, Lkr/co/cashslide/Request;

    iget-object p2, p0, Lkr/co/cashslide/Cashslide;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lkr/co/cashslide/Cashslide;->mAppId:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lkr/co/cashslide/Request;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lkr/co/cashslide/Cashslide;->request:Lkr/co/cashslide/Request;

    .line 23
    new-instance p1, Lkr/co/cashslide/ActionCache;

    iget-object p2, p0, Lkr/co/cashslide/Cashslide;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lkr/co/cashslide/ActionCache;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lkr/co/cashslide/Cashslide;->cache:Lkr/co/cashslide/ActionCache;

    return-void
.end method

.method static synthetic access$100(Lkr/co/cashslide/Cashslide;)Landroid/content/Context;
    .locals 0

    .line 9
    iget-object p0, p0, Lkr/co/cashslide/Cashslide;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lkr/co/cashslide/Cashslide;)Lkr/co/cashslide/Request;
    .locals 0

    .line 9
    iget-object p0, p0, Lkr/co/cashslide/Cashslide;->request:Lkr/co/cashslide/Request;

    return-object p0
.end method

.method static synthetic access$400(Lkr/co/cashslide/Cashslide;)Lkr/co/cashslide/ActionCache;
    .locals 0

    .line 9
    iget-object p0, p0, Lkr/co/cashslide/Cashslide;->cache:Lkr/co/cashslide/ActionCache;

    return-object p0
.end method

.method static synthetic access$500(Lkr/co/cashslide/Cashslide;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lkr/co/cashslide/Cashslide;->mAppId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public appFirstLaunched()V
    .locals 4

    .line 31
    :try_start_0
    iget-object v0, p0, Lkr/co/cashslide/Cashslide;->cache:Lkr/co/cashslide/ActionCache;

    iget-object v1, p0, Lkr/co/cashslide/Cashslide;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkr/co/cashslide/ActionCache;->isAppFirstLaunched(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lkr/co/cashslide/Cashslide;->cache:Lkr/co/cashslide/ActionCache;

    iget-object v1, p0, Lkr/co/cashslide/Cashslide;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkr/co/cashslide/ActionCache;->saveAppFirstLaunched(Ljava/lang/String;)V

    .line 33
    new-instance v0, Lkr/co/cashslide/Cashslide$AppFirstLaunchedTask;

    iget-object v1, p0, Lkr/co/cashslide/Cashslide;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lkr/co/cashslide/Cashslide$AppFirstLaunchedTask;-><init>(Lkr/co/cashslide/Cashslide;Landroid/content/Context;Lkr/co/cashslide/Cashslide$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lkr/co/cashslide/Cashslide$AppFirstLaunchedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CashslideSDK"

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public isRetentionTrackingEnabled()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lkr/co/cashslide/Cashslide;->cache:Lkr/co/cashslide/ActionCache;

    invoke-virtual {v0}, Lkr/co/cashslide/ActionCache;->isRetentionTrackingEnabled()Z

    move-result v0

    return v0
.end method

.method public missionCompleted()V
    .locals 4

    .line 87
    :try_start_0
    iget-object v0, p0, Lkr/co/cashslide/Cashslide;->cache:Lkr/co/cashslide/ActionCache;

    iget-object v1, p0, Lkr/co/cashslide/Cashslide;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkr/co/cashslide/ActionCache;->isMissionCompleted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lkr/co/cashslide/Cashslide;->cache:Lkr/co/cashslide/ActionCache;

    iget-object v1, p0, Lkr/co/cashslide/Cashslide;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkr/co/cashslide/ActionCache;->saveMissionCompleted(Ljava/lang/String;)V

    .line 89
    new-instance v0, Lkr/co/cashslide/Cashslide$MissionCompletedTask;

    iget-object v1, p0, Lkr/co/cashslide/Cashslide;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lkr/co/cashslide/Cashslide$MissionCompletedTask;-><init>(Lkr/co/cashslide/Cashslide;Landroid/content/Context;Lkr/co/cashslide/Cashslide$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lkr/co/cashslide/Cashslide$MissionCompletedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CashslideSDK"

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public recommend()V
    .locals 4

    .line 166
    :try_start_0
    iget-object v0, p0, Lkr/co/cashslide/Cashslide;->cache:Lkr/co/cashslide/ActionCache;

    iget-object v1, p0, Lkr/co/cashslide/Cashslide;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkr/co/cashslide/ActionCache;->saveRecommendAppId(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lkr/co/cashslide/Cashslide;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lkr/co/cashslide/ReferrerReceiver;->getRecommendNickname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CashslideSDK"

    const-string v1, "referrer is not found."

    .line 172
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lkr/co/cashslide/Cashslide;->cache:Lkr/co/cashslide/ActionCache;

    iget-object v1, p0, Lkr/co/cashslide/Cashslide;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkr/co/cashslide/ActionCache;->isRecommendAvailable(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Lkr/co/cashslide/Cashslide$RecommendTask;

    iget-object v2, p0, Lkr/co/cashslide/Cashslide;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lkr/co/cashslide/Cashslide$RecommendTask;-><init>(Lkr/co/cashslide/Cashslide;Landroid/content/Context;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lkr/co/cashslide/Cashslide$RecommendTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lkr/co/cashslide/Cashslide;->cache:Lkr/co/cashslide/ActionCache;

    iget-object v2, p0, Lkr/co/cashslide/Cashslide;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lkr/co/cashslide/ActionCache;->isRetentionAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    new-instance v0, Lkr/co/cashslide/Cashslide$RetentionTask;

    iget-object v2, p0, Lkr/co/cashslide/Cashslide;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lkr/co/cashslide/Cashslide$RetentionTask;-><init>(Lkr/co/cashslide/Cashslide;Landroid/content/Context;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lkr/co/cashslide/Cashslide$RetentionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CashslideSDK"

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public setRetentionTracking(Z)V
    .locals 1

    .line 148
    iget-object v0, p0, Lkr/co/cashslide/Cashslide;->cache:Lkr/co/cashslide/ActionCache;

    invoke-virtual {v0, p1}, Lkr/co/cashslide/ActionCache;->setRetentionTracking(Z)V

    return-void
.end method
