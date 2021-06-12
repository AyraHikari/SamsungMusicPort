.class public Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "DeepLink-ServiceDeepLinkReceiver"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b()Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->b:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 114
    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    .line 115
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->b:Landroid/content/Context;

    .line 116
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    .line 118
    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPowerSaveModeBatteryOptimization - Power save mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Battery optimization : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->b:Landroid/content/Context;

    const/4 p1, 0x1

    .line 38
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive - Broadcast received, Url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 41
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->a:Ljava/lang/String;

    const-string v0, "onReceive - TnC not checked"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->a:Ljava/lang/String;

    const-string v0, "onReceive - Power save mode and MILK cannot ignore battery optimization."

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_2
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive - SDK version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_4

    .line 52
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->b()V

    .line 53
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->b:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 54
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/request/basic/BasicApis;->b(Landroid/content/Context;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 55
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver$1;-><init>(Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;)V

    .line 56
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->a(Lio/reactivex/SingleObserver;)V

    goto :goto_1

    .line 99
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->d()V

    goto :goto_1

    .line 102
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/ServiceDeepLinkReceiver;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 103
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->d()V

    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method
