.class public Lcom/samsung/android/app/music/milk/store/product/ProductActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

.field private b:Lcom/samsung/android/app/music/milk/store/product/ProductReloader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .line 49
    invoke-static {p0}, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 55
    invoke-static {p0}, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->PRODUCT_DETAIL:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;->b:Lcom/samsung/android/app/music/milk/store/product/ProductReloader;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;->b:Lcom/samsung/android/app/music/milk/store/product/ProductReloader;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/product/ProductReloader;->b()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 21
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/product/ProductFragment;->a()Lcom/samsung/android/app/music/milk/store/product/ProductFragment;

    move-result-object p1

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 27
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/product/ProductReloader;

    if-eqz v0, :cond_0

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;->b:Lcom/samsung/android/app/music/milk/store/product/ProductReloader;

    .line 30
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;->a:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    .line 31
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;->a:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;->a:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;->a:Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;->removeActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 39
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onDestroy()V

    return-void
.end method
