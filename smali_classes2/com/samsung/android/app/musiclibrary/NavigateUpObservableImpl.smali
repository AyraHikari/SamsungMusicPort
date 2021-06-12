.class public final Lcom/samsung/android/app/musiclibrary/NavigateUpObservableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/OnNavigateUpListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/OnNavigateUpListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;)V
    .locals 1

    const-string v0, "activityLifeCycleObservable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/NavigateUpObservableImpl;->a:Ljava/util/List;

    .line 123
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/OnNavigateUpListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/NavigateUpObservableImpl;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a()Z
    .locals 5

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/NavigateUpObservableImpl;->a:Ljava/util/List;

    .line 318
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 319
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/OnNavigateUpListener;

    .line 136
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/OnNavigateUpListener;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "EventListener"

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNavigateUp() consumed by "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/samsung/android/app/musiclibrary/OnNavigateUpListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/NavigateUpObservableImpl;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/NavigateUpObservableImpl;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onActivityPaused(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks$DefaultImpls;->c(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks$DefaultImpls;->b(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks$DefaultImpls;->b(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks$DefaultImpls;->d(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method
