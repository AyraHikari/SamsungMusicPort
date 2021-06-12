.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$appSettings:Lcom/facebook/internal/FetchedAppSettings;


# direct methods
.method constructor <init>(Lcom/facebook/internal/FetchedAppSettings;Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$appSettings:Lcom/facebook/internal/FetchedAppSettings;

    iput-object p2, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$appSettings:Lcom/facebook/internal/FetchedAppSettings;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$appSettings:Lcom/facebook/internal/FetchedAppSettings;

    .line 234
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getCodelessEventsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 235
    :goto_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getCodelessSetupEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 238
    iget-object v0, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->checkCodelessSession(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
