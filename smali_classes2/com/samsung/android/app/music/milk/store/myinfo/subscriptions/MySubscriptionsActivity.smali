.class public Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 17
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance p1, Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsActivity;->a:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    .line 20
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsActivity;->a:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 23
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;->c()Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsFragment;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsActivity;->a:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsActivity;->a:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/myinfo/subscriptions/MySubscriptionsActivity;->removeActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 32
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onDestroy()V

    return-void
.end method
