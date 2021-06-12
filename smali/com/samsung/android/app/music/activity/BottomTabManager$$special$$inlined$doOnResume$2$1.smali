.class public final Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2;->onFragmentResumed(Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 603
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2;->b:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "curFg.childFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2;->b:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    goto :goto_0

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2;->b:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    instance-of v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/GoToTopManager;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/GoToTopManager;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/GoToTopManager;->p_()V

    .line 409
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2$1;->a:Lcom/samsung/android/app/music/activity/BottomTabManager$$special$$inlined$doOnResume$2;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->removeOnResumeLifeCycleCallback(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    :cond_3
    return-void
.end method
