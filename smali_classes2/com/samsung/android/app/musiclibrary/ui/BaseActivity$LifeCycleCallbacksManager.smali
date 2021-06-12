.class final Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LifeCycleCallbacksManager"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/os/Bundle;

.field private final d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 588
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 592
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->a:Z

    if-nez v0, :cond_1

    .line 594
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->b:Z

    if-nez v0, :cond_0

    .line 597
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->c:Landroid/os/Bundle;

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V
    .locals 1

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 617
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->b:Z

    .line 618
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->c:Landroid/os/Bundle;

    .line 619
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    check-cast v0, Ljava/lang/Iterable;

    .line 666
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 619
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 620
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void
.end method

.method public onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    check-cast v0, Ljava/lang/Iterable;

    .line 676
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 641
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    .line 642
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void
.end method

.method public onActivityPaused(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    check-cast v0, Ljava/lang/Iterable;

    .line 672
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 633
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivityPaused(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    check-cast v0, Ljava/lang/Iterable;

    .line 670
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 629
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    check-cast v0, Ljava/lang/Iterable;

    .line 664
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 612
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivitySaveInstanceState(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 624
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->a:Z

    .line 625
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    check-cast v0, Ljava/lang/Iterable;

    .line 668
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 625
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    check-cast v0, Ljava/lang/Iterable;

    .line 674
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    .line 637
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;->onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    :cond_0
    return-void
.end method
