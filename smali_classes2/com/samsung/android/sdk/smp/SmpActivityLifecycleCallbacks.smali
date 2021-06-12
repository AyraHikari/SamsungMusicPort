.class public Lcom/samsung/android/sdk/smp/SmpActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 19
    invoke-static {}, Lcom/samsung/android/sdk/smp/data/UsageManager;->a()Lcom/samsung/android/sdk/smp/data/UsageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/smp/data/UsageManager;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 26
    invoke-static {}, Lcom/samsung/android/sdk/smp/data/UsageManager;->a()Lcom/samsung/android/sdk/smp/data/UsageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/data/UsageManager;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 42
    invoke-static {}, Lcom/samsung/android/sdk/smp/data/UsageManager;->a()Lcom/samsung/android/sdk/smp/data/UsageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/data/UsageManager;->c(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
