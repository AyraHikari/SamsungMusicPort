.class public Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .line 47
    invoke-static {p0}, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Ui"

    const-string v0, "UsageHistoryActivity startActivity() - fail to launch because of network."

    .line 48
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 52
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 22
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-instance p1, Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryActivity;->a:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    .line 25
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryActivity;->a:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "UsageHistoryFragment"

    .line 29
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryFragment;-><init>()V

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x1020002

    const-string v2, "UsageHistoryFragment"

    .line 34
    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryActivity;->a:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryActivity;->a:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/myinfo/usagehistory/UsageHistoryActivity;->removeActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 42
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onDestroy()V

    return-void
.end method
