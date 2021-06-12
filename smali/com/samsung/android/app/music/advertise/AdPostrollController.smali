.class public Lcom/samsung/android/app/music/advertise/AdPostrollController;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdPostrollController;->b:Z

    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdPostrollController;->c:Z

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdPostrollController;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    .line 30
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdPostrollController;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/samsung/android/app/music/advertise/AdPostrollController;->c:Z

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 6

    const-string v0, "Advert.AdPostrollController"

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackPressed - mIsVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/advertise/AdPostrollController;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-boolean v0, p0, Lcom/samsung/android/app/music/advertise/AdPostrollController;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdPostrollController;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    const-string v3, "Advert.AdPostrollController"

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBackPressed. back statck count - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_1

    .line 47
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    invoke-static {v0}, Lcom/samsung/android/app/music/advertise/AdScheduler;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/advertise/AdScheduler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/advertise/AdScheduler;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/advertise/AdPostrollController;->b:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 49
    iput-boolean v2, p0, Lcom/samsung/android/app/music/advertise/AdPostrollController;->b:Z

    .line 50
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/advertise/AdvertiseUtils;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->POSTROLL:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    invoke-static {v0, v3, v1}, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->a(Landroid/content/Context;Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;Z)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->POSTROLL:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->a(Landroid/content/Context;Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;Z)V

    :goto_0
    return v2

    :cond_1
    return v1
.end method

.method public onFragmentPaused(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->onFragmentPaused(Landroid/support/v4/app/Fragment;)V

    const-string p1, "Advert.AdPostrollController"

    const-string v0, "onFragmentPaused"

    .line 94
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFragmentResumed(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->onFragmentResumed(Landroid/support/v4/app/Fragment;)V

    const-string p1, "Advert.AdPostrollController"

    const-string v0, "onFragmentResumed"

    .line 88
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 70
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->addOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V

    goto :goto_0

    :cond_0
    const-string p1, "Advert.AdPostrollController"

    const-string v0, "onFragmentStarted. activity does not implements BackPressObservable!!"

    .line 73
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 80
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;->removeOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V

    :cond_0
    return-void
.end method
