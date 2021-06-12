.class public Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private final c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;->a:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;->c:Landroid/app/Activity;

    .line 26
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;->c:Landroid/app/Activity;

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;->getScreenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getScreenId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;->a:Ljava/lang/String;

    return-object v0
.end method

.method public onFragmentResumed(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->onFragmentResumed(Landroid/support/v4/app/Fragment;)V

    .line 32
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getUserVisibleHint()Z

    move-result p1

    .line 33
    iget-boolean v0, p0, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;->b:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;->a()V

    .line 36
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;->b:Z

    return-void
.end method

.method public setFragmentUserVisibleHint(Landroid/support/v4/app/Fragment;Z)V
    .locals 0
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;->setFragmentUserVisibleHint(Landroid/support/v4/app/Fragment;Z)V

    .line 42
    iget-boolean p1, p0, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;->b:Z

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;->a()V

    .line 45
    :cond_0
    iput-boolean p2, p0, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;->b:Z

    return-void
.end method
