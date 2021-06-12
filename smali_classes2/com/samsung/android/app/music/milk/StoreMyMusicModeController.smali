.class public Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;->a:Z

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private c(Landroid/app/Activity;)Z
    .locals 1

    .line 65
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksActivity;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoActivity;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/product/ProductActivity;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;

    if-nez v0, :cond_0

    instance-of p1, p1, Lcom/samsung/android/app/music/milk/store/voucher/VoucherActivity;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)V
    .locals 2

    .line 54
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;->a:Z

    if-nez v0, :cond_0

    const v0, 0x7f0b03ba

    const/4 v1, 0x0

    .line 55
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/milk/MilkToast;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 57
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMyMusicModeEnabled. my music mode is on. activity finished."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;->onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V

    .line 32
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;->c(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;->onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/StoreMyMusicModeController;->a:Z

    return-void
.end method
