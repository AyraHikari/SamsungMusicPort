.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
.end method

.method public abstract onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V
.end method

.method public abstract onActivityPaused(Landroid/support/v4/app/FragmentActivity;)V
.end method

.method public abstract onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V
.end method

.method public abstract onActivitySaveInstanceState(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
.end method

.method public abstract onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V
.end method

.method public abstract onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V
.end method
