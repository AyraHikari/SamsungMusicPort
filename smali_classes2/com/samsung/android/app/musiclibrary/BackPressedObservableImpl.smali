.class public final Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/BackPressedObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl$PriorityBackPressedListener;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl$PriorityBackPressedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;)V
    .locals 1

    const-string v0, "activityLifeCycleObservable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl;->a:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl;->b:Ljava/util/List;

    .line 57
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    return-void
.end method

.method private final b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl;->b:Ljava/util/List;

    .line 320
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 321
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl$PriorityBackPressedListener;

    .line 88
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl$PriorityBackPressedListener;->b()Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;->onBackPressed()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "EventListener"

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBackPressed() consumed by "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl;->a:Ljava/util/List;

    .line 324
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_3

    .line 325
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    .line 94
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;->onBackPressed()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "EventListener"

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBackPressed() consumed by "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public addOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;I)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 62
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl;->b:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl$PriorityBackPressedListener;

    invoke-direct {v1, p2, p1}, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl$PriorityBackPressedListener;-><init>(ILcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl;->b:Ljava/util/List;

    .line 318
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    new-instance p2, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl$addOnBackPressedListener$$inlined$sortByDescending$1;

    invoke-direct {p2}, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl$addOnBackPressedListener$$inlined$sortByDescending$1;-><init>()V

    check-cast p2, Ljava/util/Comparator;

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;Ljava/util/Comparator;)V

    .line 66
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl;->b()V

    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onActivityPaused(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks$DefaultImpls;->c(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks$DefaultImpls;->b(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks$DefaultImpls;->b(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks$DefaultImpls;->d(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method public removeOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl;->b:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl$removeOnBackPressedListener$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl$removeOnBackPressedListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    :cond_0
    return-void
.end method
