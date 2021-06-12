.class public Lcom/samsung/android/app/music/activity/PackageEnableChecker;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/activity/PackageEnableChecker$PackageEnableStatusListener;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/samsung/android/app/music/activity/PackageEnableChecker$PackageEnableStatusListener;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/activity/PackageEnableChecker$PackageEnableStatusListener;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/PackageEnableChecker;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/samsung/android/app/music/activity/PackageEnableChecker;->c:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/samsung/android/app/music/activity/PackageEnableChecker;->b:Lcom/samsung/android/app/music/activity/PackageEnableChecker$PackageEnableStatusListener;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/PackageEnableChecker;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/PackageEnableChecker;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/MilkPackageLauncher;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    .line 42
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->removeActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 43
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/PackageEnableChecker;->b:Lcom/samsung/android/app/music/activity/PackageEnableChecker$PackageEnableStatusListener;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/PackageEnableChecker;->c()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/activity/PackageEnableChecker$PackageEnableStatusListener;->a(Z)V

    return-void
.end method
