.class public abstract Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/BackPressedObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/BottomBarMenuViewable;
.implements Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;
.implements Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager;
.implements Lcom/samsung/android/app/musiclibrary/ui/WindowFocusObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;,
        Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$Companion;

.field private static final DEBUG:Z


# instance fields
.field private final actionModeObservableManager$delegate:Lkotlin/Lazy;

.field private final backPressedObservableImpl$delegate:Lkotlin/Lazy;

.field private commandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

.field private final contextMenuObservableImpl$delegate:Lkotlin/Lazy;

.field private isResumedState:Z

.field private final lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

.field private final listActionModeObservableImpl$delegate:Lkotlin/Lazy;

.field private longPressed:Z

.field private final multiWindowManagerImpl$delegate:Lkotlin/Lazy;

.field private final navigateUpObservableImpl$delegate:Lkotlin/Lazy;

.field private final onKeyObservableImpl$delegate:Lkotlin/Lazy;

.field private permissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

.field private permissionManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;",
            ">;"
        }
    .end annotation
.end field

.field private searchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

.field private settingFontChangeManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

.field private final themeModeChangeObservers:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private final windowFocusObservableImpl$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "multiWindowManagerImpl"

    const-string v4, "getMultiWindowManagerImpl()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "onKeyObservableImpl"

    const-string v4, "getOnKeyObservableImpl()Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "listActionModeObservableImpl"

    const-string v4, "getListActionModeObservableImpl()Lcom/samsung/android/app/musiclibrary/ListActionModeObservableImpl;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "windowFocusObservableImpl"

    const-string v4, "getWindowFocusObservableImpl()Lcom/samsung/android/app/musiclibrary/WindowFocusObservableImpl;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "backPressedObservableImpl"

    const-string v4, "getBackPressedObservableImpl()Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "navigateUpObservableImpl"

    const-string v4, "getNavigateUpObservableImpl()Lcom/samsung/android/app/musiclibrary/NavigateUpObservableImpl;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "contextMenuObservableImpl"

    const-string v4, "getContextMenuObservableImpl()Lcom/samsung/android/app/musiclibrary/ContextMenuObservableImpl;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "actionModeObservableManager"

    const-string v4, "getActionModeObservableManager$musicLibrary_release()Lcom/samsung/android/app/musiclibrary/ActionModeObservableManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->Companion:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 81
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    .line 98
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$multiWindowManagerImpl$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$multiWindowManagerImpl$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->multiWindowManagerImpl$delegate:Lkotlin/Lazy;

    .line 104
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$onKeyObservableImpl$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$onKeyObservableImpl$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onKeyObservableImpl$delegate:Lkotlin/Lazy;

    .line 109
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 110
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$listActionModeObservableImpl$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$listActionModeObservableImpl$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 108
    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->listActionModeObservableImpl$delegate:Lkotlin/Lazy;

    .line 114
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$windowFocusObservableImpl$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$windowFocusObservableImpl$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->windowFocusObservableImpl$delegate:Lkotlin/Lazy;

    .line 118
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$backPressedObservableImpl$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$backPressedObservableImpl$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->backPressedObservableImpl$delegate:Lkotlin/Lazy;

    .line 122
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$navigateUpObservableImpl$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$navigateUpObservableImpl$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->navigateUpObservableImpl$delegate:Lkotlin/Lazy;

    .line 126
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$contextMenuObservableImpl$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$contextMenuObservableImpl$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->contextMenuObservableImpl$delegate:Lkotlin/Lazy;

    .line 144
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$themeModeChangeObservers$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$themeModeChangeObservers$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->themeModeChangeObservers:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 153
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$actionModeObservableManager$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$actionModeObservableManager$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->actionModeObservableManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$isResumedState$p(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isResumedState:Z

    return p0
.end method

.method public static final synthetic access$setResumedState$p(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isResumedState:Z

    return-void
.end method

.method private final getBackPressedObservableImpl()Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->backPressedObservableImpl$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl;

    return-object v0
.end method

.method private final getContextMenuObservableImpl()Lcom/samsung/android/app/musiclibrary/ContextMenuObservableImpl;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->contextMenuObservableImpl$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ContextMenuObservableImpl;

    return-object v0
.end method

.method private final getListActionModeObservableImpl()Lcom/samsung/android/app/musiclibrary/ListActionModeObservableImpl;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->listActionModeObservableImpl$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ListActionModeObservableImpl;

    return-object v0
.end method

.method private final getMultiWindowManagerImpl()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->multiWindowManagerImpl$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;

    return-object v0
.end method

.method private final getNavigateUpObservableImpl()Lcom/samsung/android/app/musiclibrary/NavigateUpObservableImpl;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->navigateUpObservableImpl$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/NavigateUpObservableImpl;

    return-object v0
.end method

.method private final getOnKeyObservableImpl()Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onKeyObservableImpl$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;

    return-object v0
.end method

.method private final getWindowFocusObservableImpl()Lcom/samsung/android/app/musiclibrary/WindowFocusObservableImpl;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->windowFocusObservableImpl$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/WindowFocusObservableImpl;

    return-object v0
.end method


# virtual methods
.method public addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V
    .locals 2

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->a(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    return-void
.end method

.method public addContextMenuListener(Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable$ContextMenuListener;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getContextMenuObservableImpl()Lcom/samsung/android/app/musiclibrary/ContextMenuObservableImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ContextMenuObservableImpl;->addContextMenuListener(Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable$ContextMenuListener;)V

    return-void
.end method

.method public final addOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 552
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->addOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;I)V

    return-void
.end method

.method public addOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;I)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getBackPressedObservableImpl()Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl;->addOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;I)V

    return-void
.end method

.method public addOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getOnKeyObservableImpl()Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;->addOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    return-void
.end method

.method public addOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->settingFontChangeManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->addOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V

    :cond_0
    return-void
.end method

.method public addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getListActionModeObservableImpl()Lcom/samsung/android/app/musiclibrary/ListActionModeObservableImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ListActionModeObservableImpl;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    return-void
.end method

.method public addOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getMultiWindowManagerImpl()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->addOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V

    return-void
.end method

.method public addOnMultiWindowSizeChangedListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowSizeChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getMultiWindowManagerImpl()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->addOnMultiWindowSizeChangedListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowSizeChangedListener;)V

    return-void
.end method

.method public addOnNavigateUpListener(Lcom/samsung/android/app/musiclibrary/OnNavigateUpListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getNavigateUpObservableImpl()Lcom/samsung/android/app/musiclibrary/NavigateUpObservableImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/NavigateUpObservableImpl;->a(Lcom/samsung/android/app/musiclibrary/OnNavigateUpListener;)V

    return-void
.end method

.method public addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getWindowFocusObservableImpl()Lcom/samsung/android/app/musiclibrary/WindowFocusObservableImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/WindowFocusObservableImpl;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 163
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/ThemeManagerKt;->a(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroid/content/Context;

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->commandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 517
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->b()V

    .line 522
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x3e

    if-ne v0, v2, :cond_4

    .line 524
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 525
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_1

    .line 538
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getOnKeyObservableImpl()Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    .line 539
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->longPressed:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 540
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->togglePlay()V

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_1

    :pswitch_1
    if-nez v3, :cond_2

    .line 530
    iput-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->longPressed:Z

    .line 531
    invoke-virtual {p1}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_0

    .line 532
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 533
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->longPressed:Z

    .line 535
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getOnKeyObservableImpl()Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 547
    :cond_4
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 647
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isResumedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 650
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$doOnResume$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$doOnResume$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    :goto_0
    return-void
.end method

.method public final getActionModeObservableManager$musicLibrary_release()Lcom/samsung/android/app/musiclibrary/ActionModeObservableManager;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->actionModeObservableManager$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ActionModeObservableManager;

    return-object v0
.end method

.method public final getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;
    .locals 2

    .line 132
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyVersion;->which()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 134
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->commandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-nez v0, :cond_2

    .line 136
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->commandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->commandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    :goto_1
    return-object v0
.end method

.method public getMultiWindowRectInfo()Landroid/graphics/Rect;
    .locals 1

    .line 463
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getMultiWindowManagerImpl()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->b()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;
    .locals 8

    .line 480
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->permissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    const/4 v2, 0x0

    move-object v3, p0

    check-cast v3, Landroid/support/v4/app/FragmentActivity;

    const/4 v4, 0x0

    const/4 v1, 0x0

    new-array v5, v1, [Ljava/lang/String;

    const/4 v6, 0x5

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;-><init>(ILandroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->permissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->permissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    return-object v0
.end method

.method public getWindowHeight()I
    .locals 1

    .line 476
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getMultiWindowManagerImpl()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->d()I

    move-result v0

    return v0
.end method

.method public getWindowWidth()I
    .locals 1

    .line 472
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getMultiWindowManagerImpl()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->c()I

    move-result v0

    return v0
.end method

.method public isMultiWindowMode()Z
    .locals 1

    .line 453
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getMultiWindowManagerImpl()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->isMultiWindowMode()Z

    move-result v0

    return v0
.end method

.method public final isResumedState()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isResumedState:Z

    return v0
.end method

.method public isScaleWindow()Z
    .locals 1

    .line 458
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getMultiWindowManagerImpl()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->a()Z

    move-result v0

    return v0
.end method

.method public varargs newPermissionManager(Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;
    .locals 4

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->permissionManagers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->permissionManagers:Ljava/util/List;

    .line 494
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->permissionManagers:Ljava/util/List;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/FragmentActivity;

    array-length v3, p2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;-><init>(ILandroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;[Ljava/lang/String;)V

    .line 495
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->permissionManagers:Ljava/util/List;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 565
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getBackPressedObservableImpl()Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onBottomBarMenuCreated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBottomBarMenuDestroyed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 168
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 171
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/ThemeManagerKt;->a(Landroid/content/res/Configuration;Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 324
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getContextMenuObservableImpl()Lcom/samsung/android/app/musiclibrary/ContextMenuObservableImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ContextMenuObservableImpl;->a(Landroid/view/Menu;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/R$styleable;->OneUi:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 187
    :try_start_0
    sget v1, Lcom/samsung/android/app/musiclibrary/R$styleable;->OneUi_isOneUi:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 188
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v1, v4, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v4, "window"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/WindowExtensionKt;->a(Landroid/view/Window;)V

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v4, "window"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/WindowExtensionKt;->c(Landroid/view/Window;Z)V

    .line 193
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-gt v1, v2, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "window"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/WindowExtensionKt;->b(Landroid/view/Window;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "Ui"

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onCreate() savedInstanceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/dex/DexBaseKeyController;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/dex/DexBaseKeyController;-><init>(Landroid/app/Activity;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->addOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    .line 210
    :cond_2
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;-><init>(Landroid/content/Context;)V

    .line 211
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 210
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->settingFontChangeManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

    .line 214
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->setCurrentScreenState(Ljava/lang/String;)V

    .line 216
    :cond_3
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->themeModeChangeObservers:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v2, "key_theme"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p1

    .line 198
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 3

    const-string v0, "Ui"

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->commandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->e()V

    .line 261
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->themeModeChangeObservers:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v2, "key_theme"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 263
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getOnKeyObservableImpl()Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    const/16 v2, 0x54

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->searchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->searchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;->isLaunchSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->searchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;->launchSearch()V

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_0
    if-nez v0, :cond_6

    .line 347
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_1
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getOnKeyObservableImpl()Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/16 v2, 0x2d

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->finishAffinity()V

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 360
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method

.method public onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getListActionModeObservableImpl()Lcom/samsung/android/app/musiclibrary/ListActionModeObservableImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ListActionModeObservableImpl;->onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V

    return-void
.end method

.method public onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getListActionModeObservableImpl()Lcom/samsung/android/app/musiclibrary/ListActionModeObservableImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ListActionModeObservableImpl;->onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 468
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getMultiWindowManagerImpl()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->a(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "Ui"

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onNewIntent()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x102002c

    if-eq v0, v2, :cond_1

    .line 317
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 299
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getNavigateUpObservableImpl()Lcom/samsung/android/app/musiclibrary/NavigateUpObservableImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/NavigateUpObservableImpl;->a()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 300
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v2, "0017"

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 305
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isResumedState:Z

    if-eqz p1, :cond_3

    .line 306
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v2, "0017"

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onBackPressed()V

    :cond_3
    return v1

    :cond_4
    :goto_0
    const-string p1, "Ui"

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onOptionsItemSelected() Activity is already isDestroyed or finishing"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method protected onPause()V
    .locals 3

    const-string v0, "Ui"

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isResumedState:Z

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->commandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->d()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->onActivityPaused(Landroid/support/v4/app/FragmentActivity;)V

    .line 248
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->permissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    const/16 v1, 0x64

    if-eqz v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 410
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->permissionManager:Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a([Ljava/lang/String;[I)V

    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->permissionManagers:Ljava/util/List;

    if-eqz v0, :cond_3

    if-le p1, v1, :cond_3

    sub-int/2addr p1, v1

    .line 414
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->permissionManagers:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    .line 415
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->a([Ljava/lang/String;[I)V

    return-void

    :cond_3
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 233
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const/4 v0, 0x1

    .line 236
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isResumedState:Z

    const-string v0, "Ui"

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->commandExecutorManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->c()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->onActivitySaveInstanceState(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V

    .line 181
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 224
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    const-string v0, "Ui"

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method

.method protected onStop()V
    .locals 3

    const-string v0, "Ui"

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V

    .line 254
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 501
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getWindowFocusObservableImpl()Lcom/samsung/android/app/musiclibrary/WindowFocusObservableImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/WindowFocusObservableImpl;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public removeActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V
    .locals 1

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->lifeCycleCallbacksManager:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity$LifeCycleCallbacksManager;->a(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    return-void
.end method

.method public removeContextMenuListener(Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable$ContextMenuListener;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getContextMenuObservableImpl()Lcom/samsung/android/app/musiclibrary/ContextMenuObservableImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ContextMenuObservableImpl;->removeContextMenuListener(Lcom/samsung/android/app/musiclibrary/ui/ContextMenuObservable$ContextMenuListener;)V

    return-void
.end method

.method public removeOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getBackPressedObservableImpl()Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/BackPressedObservableImpl;->removeOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V

    return-void
.end method

.method public removeOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getOnKeyObservableImpl()Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/OnKeyObservableImpl;->removeOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    return-void
.end method

.method public removeOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->settingFontChangeManagerImpl:Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/setting/SettingFontChangeManagerImpl;->removeOnLargerFontChangeListener(Lcom/samsung/android/app/musiclibrary/ui/SettingFontChangeManager$OnLargerFontChangeListener;)V

    :cond_0
    return-void
.end method

.method public removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getListActionModeObservableImpl()Lcom/samsung/android/app/musiclibrary/ListActionModeObservableImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ListActionModeObservableImpl;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    return-void
.end method

.method public removeOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getMultiWindowManagerImpl()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->removeOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V

    return-void
.end method

.method public removeOnMultiWindowSizeChangedListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowSizeChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getMultiWindowManagerImpl()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManagerImpl;->removeOnMultiWindowSizeChangedListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowSizeChangedListener;)V

    return-void
.end method

.method public removeOnNavigateUpListener(Lcom/samsung/android/app/musiclibrary/OnNavigateUpListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getNavigateUpObservableImpl()Lcom/samsung/android/app/musiclibrary/NavigateUpObservableImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/NavigateUpObservableImpl;->b(Lcom/samsung/android/app/musiclibrary/OnNavigateUpListener;)V

    return-void
.end method

.method public removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getWindowFocusObservableImpl()Lcom/samsung/android/app/musiclibrary/WindowFocusObservableImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/WindowFocusObservableImpl;->a(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 268
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 269
    sget p1, Lcom/samsung/android/app/musiclibrary/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    :cond_0
    return-void
.end method

.method protected final setSearchLaunchable(Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;)V
    .locals 1

    const-string v0, "searchLaunchable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->searchLaunchable:Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    return-void
.end method
