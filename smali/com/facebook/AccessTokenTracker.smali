.class public abstract Lcom/facebook/AccessTokenTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AccessTokenTracker"


# instance fields
.field private final broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private isTracking:Z

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->isTracking:Z

    .line 58
    invoke-static {}, Lcom/facebook/internal/Validate;->sdkInitialized()V

    .line 60
    new-instance v0, Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/AccessTokenTracker$CurrentAccessTokenBroadcastReceiver;-><init>(Lcom/facebook/AccessTokenTracker;Lcom/facebook/AccessTokenTracker$1;)V

    iput-object v0, p0, Lcom/facebook/AccessTokenTracker;->receiver:Landroid/content/BroadcastReceiver;

    .line 62
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AccessTokenTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 64
    invoke-virtual {p0}, Lcom/facebook/AccessTokenTracker;->startTracking()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/facebook/AccessTokenTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addBroadcastReceiver()V
    .locals 3

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/facebook/AccessTokenTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/facebook/AccessTokenTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public isTracking()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->isTracking:Z

    return v0
.end method

.method protected abstract onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
.end method

.method public startTracking()V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->isTracking:Z

    if-eqz v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;->addBroadcastReceiver()V

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->isTracking:Z

    return-void
.end method

.method public stopTracking()V
    .locals 2

    .line 84
    iget-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->isTracking:Z

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/facebook/AccessTokenTracker;->broadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/facebook/AccessTokenTracker;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/facebook/AccessTokenTracker;->isTracking:Z

    return-void
.end method
