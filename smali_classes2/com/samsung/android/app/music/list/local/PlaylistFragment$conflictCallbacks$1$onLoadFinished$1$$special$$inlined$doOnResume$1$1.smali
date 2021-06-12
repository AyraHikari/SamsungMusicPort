.class public final Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1;->onFragmentResumed(Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 603
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1;->b:Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "conflict"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 604
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1;->b:Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "conflict"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/list/playlist/ConflictDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1;->a:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1$onLoadFinished$1$$special$$inlined$doOnResume$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->removeOnResumeLifeCycleCallback(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    :cond_2
    return-void
.end method
