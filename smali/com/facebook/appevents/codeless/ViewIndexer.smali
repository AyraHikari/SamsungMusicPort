.class public Lcom/facebook/appevents/codeless/ViewIndexer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/codeless/ViewIndexer$ScreenshotTaker;
    }
.end annotation


# static fields
.field private static final APP_VERSION_PARAM:Ljava/lang/String; = "app_version"

.field private static final PLATFORM_PARAM:Ljava/lang/String; = "platform"

.field private static final REQUEST_TYPE:Ljava/lang/String; = "request_type"

.field private static final SUCCESS:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String;

.field private static final TREE_PARAM:Ljava/lang/String; = "tree"

.field private static instance:Lcom/facebook/appevents/codeless/ViewIndexer;


# instance fields
.field private activityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private indexingTimer:Ljava/util/Timer;

.field private previousDigest:Ljava/lang/String;

.field private final uiThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/codeless/ViewIndexer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->activityReference:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->previousDigest:Ljava/lang/String;

    .line 78
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->uiThreadHandler:Landroid/os/Handler;

    .line 79
    sput-object p0, Lcom/facebook/appevents/codeless/ViewIndexer;->instance:Lcom/facebook/appevents/codeless/ViewIndexer;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/appevents/codeless/ViewIndexer;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->uiThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/facebook/appevents/codeless/ViewIndexer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/facebook/appevents/codeless/ViewIndexer;->sendToServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/appevents/codeless/ViewIndexer;)Ljava/util/Timer;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->indexingTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->indexingTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/facebook/appevents/codeless/ViewIndexer;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->previousDigest:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->previousDigest:Ljava/lang/String;

    return-object p1
.end method

.method public static buildAppIndexingRequest(Ljava/lang/String;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 236
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s/app_indexing"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 238
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 236
    invoke-static {p1, p2, v0, v0}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_1

    .line 244
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string v0, "tree"

    .line 247
    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "app_version"

    .line 248
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "platform"

    const-string v0, "android"

    .line 249
    invoke-virtual {p2, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "request_type"

    .line 250
    invoke-virtual {p2, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "app_indexing"

    .line 251
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "device_session_id"

    .line 253
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentDeviceSessionID()Ljava/lang/String;

    move-result-object p3

    .line 252
    invoke-virtual {p2, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_2
    invoke-virtual {p1, p2}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 258
    new-instance p0, Lcom/facebook/appevents/codeless/ViewIndexer$4;

    invoke-direct {p0}, Lcom/facebook/appevents/codeless/ViewIndexer$4;-><init>()V

    invoke-virtual {p1, p0}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    return-object p1
.end method

.method private sendToServer(Ljava/lang/String;)V
    .locals 2

    .line 188
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/codeless/ViewIndexer$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/appevents/codeless/ViewIndexer$3;-><init>(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendToServerUnityInstance(Ljava/lang/String;)V
    .locals 1

    .line 176
    sget-object v0, Lcom/facebook/appevents/codeless/ViewIndexer;->instance:Lcom/facebook/appevents/codeless/ViewIndexer;

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    sget-object v0, Lcom/facebook/appevents/codeless/ViewIndexer;->instance:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-virtual {v0, p0}, Lcom/facebook/appevents/codeless/ViewIndexer;->sendToServerUnity(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public schedule()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 89
    new-instance v2, Lcom/facebook/appevents/codeless/ViewIndexer$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/appevents/codeless/ViewIndexer$1;-><init>(Lcom/facebook/appevents/codeless/ViewIndexer;Landroid/app/Activity;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/codeless/ViewIndexer$2;

    invoke-direct {v1, p0, v2}, Lcom/facebook/appevents/codeless/ViewIndexer$2;-><init>(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/util/TimerTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendToServerUnity(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    sget-object v0, Lcom/facebook/appevents/codeless/ViewIndexer;->instance:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-direct {v0, p1}, Lcom/facebook/appevents/codeless/ViewIndexer;->sendToServer(Ljava/lang/String;)V

    return-void
.end method

.method public unschedule()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->indexingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->indexingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/facebook/appevents/codeless/ViewIndexer;->indexingTimer:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 170
    sget-object v1, Lcom/facebook/appevents/codeless/ViewIndexer;->TAG:Ljava/lang/String;

    const-string v2, "Error unscheduling indexing job"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
