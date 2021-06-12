.class final Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->initializeIfNotInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 105
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->asInterface(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p1

    .line 104
    invoke-static {p1}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->access$002(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
