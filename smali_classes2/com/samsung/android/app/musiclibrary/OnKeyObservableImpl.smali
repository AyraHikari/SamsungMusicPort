.class public final Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;
.implements Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;)V
    .locals 1

    const-string v0, "activityLifeCycleObservable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;->a:Ljava/util/List;

    .line 155
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    return-void
.end method


# virtual methods
.method public addOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onActivityPaused(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks$DefaultImpls;->c(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks$DefaultImpls;->b(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks$DefaultImpls;->b(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks$DefaultImpls;->d(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;->a:Ljava/util/List;

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

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    .line 168
    invoke-interface {v3, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;->a:Ljava/util/List;

    .line 322
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 323
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    .line 175
    invoke-interface {v3, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
