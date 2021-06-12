.class public final Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

.field final synthetic b:Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1;->b:Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->b(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFragmentDestroyed(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->e(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onFragmentPaused(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->c(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onFragmentResumed(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->removeOnResumeLifeCycleCallback(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    :goto_0
    return-void
.end method

.method public onFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->c(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->d(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public setFragmentUserVisibleHint(Landroid/support/v4/app/Fragment;Z)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method
