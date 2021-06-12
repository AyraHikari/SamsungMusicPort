.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
.end method

.method public abstract onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
.end method

.method public abstract onFragmentDestroyed(Landroid/support/v4/app/Fragment;)V
.end method

.method public abstract onFragmentPaused(Landroid/support/v4/app/Fragment;)V
.end method

.method public abstract onFragmentResumed(Landroid/support/v4/app/Fragment;)V
.end method

.method public abstract onFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
.end method

.method public abstract onFragmentStarted(Landroid/support/v4/app/Fragment;)V
.end method

.method public abstract onFragmentStopped(Landroid/support/v4/app/Fragment;)V
.end method

.method public abstract setFragmentUserVisibleHint(Landroid/support/v4/app/Fragment;Z)V
.end method
