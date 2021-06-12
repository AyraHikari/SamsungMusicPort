.class public abstract Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;,
        Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$Companion;

.field private static final DEBUG:Z


# instance fields
.field protected baseTag:Ljava/lang/String;

.field private cachedParent:Landroid/view/ViewGroup;

.field private cachedView:Landroid/view/View;

.field private commandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

.field protected contextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

.field private customizedWindowLightStatusBar:Ljava/lang/Boolean;

.field private isCachedViewUsed:Z

.field private isFragmentVisible:Z

.field private isViewCacheEnabled:Z

.field private final lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

.field protected lifeCycleLogEnabled:Z

.field protected musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

.field private searchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

.field private toString:Ljava/lang/String;

.field private final uiType$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "uiType"

    const-string v4, "getUiType()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->Companion:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$Companion;

    .line 591
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 42
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    .line 53
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$uiType$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$uiType$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->uiType$delegate:Lkotlin/Lazy;

    .line 59
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isFragmentVisible:Z

    return-void
.end method


# virtual methods
.method public final addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V
    .locals 2

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->a(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    return-void
.end method

.method public addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V
    .locals 2

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getActionModeObservableManager$musicLibrary_release()Lcom/samsung/android/app/musiclibrary/ActionModeObservableManager;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ActionModeObservableManager;->a(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    :cond_1
    return-void
.end method

.method public final addOnResumeLifeCycleCallback(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V
    .locals 1

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->a(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    return-void
.end method

.method public final doOnResume(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 404
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$doOnResume$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$doOnResume$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->addOnResumeLifeCycleCallback(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    :goto_0
    return-void
.end method

.method protected final getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .locals 2

    .line 67
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyVersion;->which()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->commandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-nez v0, :cond_2

    .line 71
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->commandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->commandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    :goto_1
    return-object v0
.end method

.method protected final getUiType()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->uiType$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final isFragmentVisible()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isFragmentVisible:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 182
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 183
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 185
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onActivityCreated() savedInstanceState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->onFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 107
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->a()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 99
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleLogEnabled:Z

    if-eqz p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onAttach() - activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->a()V

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onContextItemSelected item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 286
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->contextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getUserVisibleHint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->contextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/MenuItem;)Z

    move-result v0

    .line 289
    :cond_2
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 291
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onContextItemSelected() itemId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", handled="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 290
    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 111
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 113
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onCreate() savedInstanceState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->onFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 274
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onCreateContextMenu View="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", menu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->contextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-eqz v0, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/view/Menu;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->contextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-eqz v0, :cond_3

    move-object v1, p1

    check-cast v1, Landroid/view/Menu;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;)V

    .line 279
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onCreateOptionsMenu menu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 303
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isViewCacheEnabled:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->cachedParent:Landroid/view/ViewGroup;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->cachedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 125
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " onCreateView() use cache"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isCachedViewUsed:Z

    .line 127
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->cachedView:Landroid/view/View;

    return-object p1

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreateView()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onCreateView() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isViewCacheEnabled:Z

    if-eqz v2, :cond_1

    const-string v2, "make cache"

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isCachedViewUsed:Z

    .line 137
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 140
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleLogEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onCreateView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateView()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .line 259
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onDestroy()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->commandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->e()V

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->onFragmentDestroyed(Landroid/support/v4/app/Fragment;)V

    .line 263
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 4

    .line 229
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onDestroyView()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v0, v2

    :cond_1
    check-cast v0, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    if-eqz v0, :cond_2

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;->removeOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->c()V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->cachedView:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_4

    move-object v0, v2

    :cond_4
    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->cachedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 236
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isViewCacheEnabled:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroyView(Z)V

    .line 238
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method protected onDestroyView(Z)V
    .locals 0

    return-void
.end method

.method public onDetach()V
    .locals 4

    .line 267
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onDetach()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 4

    .line 244
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onHiddenChanged() hidden="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 247
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->customizedWindowLightStatusBar:Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/app/musiclibrary/R$bool;->windowLightStatusBar:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 248
    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/WindowExtensionKt;->a(Landroid/view/Window;Z)V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x54

    if-ne p1, p2, :cond_2

    .line 346
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->searchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->searchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;->isLaunchSearchEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 348
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->searchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;->launchSearch()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 313
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onOptionsItemSelected item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 316
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/MenuItem;)Z

    move-result v0

    .line 319
    :cond_2
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 321
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onOptionsItemSelected() - itemId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", handled="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v0
.end method

.method public onPause()V
    .locals 4

    .line 212
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onPause()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    if-eqz v0, :cond_2

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;->removeOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->commandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->d()V

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->onFragmentPaused(Landroid/support/v4/app/Fragment;)V

    .line 218
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .line 307
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onPrepareOptionsMenu menu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 200
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 201
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onResume()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    if-eqz v0, :cond_2

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;->addOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    .line 204
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->commandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->c()V

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->onFragmentResumed(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 91
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onSaveInstanceState outState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->onFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 94
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 193
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 194
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onStart()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->onFragmentStarted(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public onStop()V
    .locals 4

    .line 222
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onStop()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->onFragmentStopped(Landroid/support/v4/app/Fragment;)V

    .line 225
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isViewCacheEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    move-object v0, v1

    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->cachedParent:Landroid/view/ViewGroup;

    .line 151
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->cachedView:Landroid/view/View;

    .line 154
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v2, v0, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    if-nez v2, :cond_2

    move-object v0, v1

    :cond_2
    check-cast v0, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move-object v3, p0

    check-cast v3, Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    const/4 v4, 0x2

    invoke-static {v0, v3, v2, v4, v1}, Lcom/samsung/android/app/musiclibrary/BackPressedObservable$DefaultImpls;->a(Lcom/samsung/android/app/musiclibrary/BackPressedObservable;Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;IILjava/lang/Object;)V

    .line 158
    :cond_3
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->toolbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_5

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    instance-of v4, v3, Landroid/support/v7/app/AppCompatActivity;

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, v3

    :goto_0
    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 162
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 163
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->customizedWindowLightStatusBar:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    .line 164
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/app/musiclibrary/R$bool;->windowLightStatusBar:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 162
    :goto_1
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/WindowExtensionKt;->a(Landroid/view/Window;Z)V

    .line 167
    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleLogEnabled:Z

    if-eqz v0, :cond_9

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onViewCreated(), savedInstanceState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    if-eqz p2, :cond_8

    const/4 v2, 0x1

    :cond_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isCached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isCachedViewUsed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-static {v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->b()V

    .line 176
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isCachedViewUsed:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V

    return-void
.end method

.method protected onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V
    .locals 2

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getActionModeObservableManager$musicLibrary_release()Lcom/samsung/android/app/musiclibrary/ActionModeObservableManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ActionModeObservableManager;->a(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    :cond_1
    return-void
.end method

.method public final removeOnResumeLifeCycleCallback(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V
    .locals 1

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->b(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    return-void
.end method

.method public final setFragmentVisible$musicLibrary_release(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isFragmentVisible:Z

    return-void
.end method

.method protected final setLightStatusBar(Z)V
    .locals 1

    .line 365
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->customizedWindowLightStatusBar:Ljava/lang/Boolean;

    .line 366
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/WindowExtensionKt;->a(Landroid/view/Window;Z)V

    :cond_0
    return-void
.end method

.method protected final setSearchLaunchable(Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;)V
    .locals 1

    const-string v0, "searchLaunchable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->searchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 4

    .line 328
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleLogEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 330
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->baseTag:Ljava/lang/String;

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " setUserVisibleHint() isVisibleToUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 334
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->commandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->c()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 337
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->commandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->d()V

    .line 340
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment$LifeCycleCallbacksManager;->setFragmentUserVisibleHint(Landroid/support/v4/app/Fragment;Z)V

    .line 341
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    return-void
.end method

.method protected final setViewCachedEnabled(Z)V
    .locals 0

    .line 389
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->isViewCacheEnabled:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->toString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 375
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->toString:Ljava/lang/String;

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->toString:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    return-object v0
.end method
