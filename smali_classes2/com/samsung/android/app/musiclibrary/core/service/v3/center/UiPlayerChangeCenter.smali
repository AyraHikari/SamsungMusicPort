.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;
.super Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final activePlayerCallback$delegate:Lkotlin/Lazy;

.field private final context:Landroid/content/Context;

.field private final defaultConnection:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$defaultConnection$1;

.field private isConnected:Z

.field private isRegistered:Z

.field private final playerChangedCallback$delegate:Lkotlin/Lazy;

.field private token:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playerChangedCallback"

    const-string v4, "getPlayerChangedCallback()Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$playerChangedCallback$2$1;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "activePlayerCallback"

    const-string v4, "getActivePlayerCallback()Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$activePlayerCallback$2$1;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->context:Landroid/content/Context;

    .line 27
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$defaultConnection$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$defaultConnection$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->defaultConnection:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$defaultConnection$1;

    .line 38
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$playerChangedCallback$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$playerChangedCallback$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->playerChangedCallback$delegate:Lkotlin/Lazy;

    .line 45
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$activePlayerCallback$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$activePlayerCallback$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->activePlayerCallback$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$isConnected$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->isConnected:Z

    return p0
.end method

.method public static final synthetic access$registerPlayerChangedCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->registerPlayerChangedCallback()V

    return-void
.end method

.method public static final synthetic access$setConnected$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->isConnected:Z

    return-void
.end method

.method private final bindPlayerService()V
    .locals 4

    .line 100
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    .line 101
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    .line 103
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->defaultConnection:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$defaultConnection$1;

    check-cast v3, Landroid/content/ServiceConnection;

    .line 100
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->bind(Landroid/content/Context;Ljava/lang/Class;Landroid/content/ServiceConnection;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->token:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;

    return-void
.end method

.method private final getActivePlayerCallback()Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$activePlayerCallback$2$1;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->activePlayerCallback$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$activePlayerCallback$2$1;

    return-object v0
.end method

.method private final getPlayerChangedCallback()Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$playerChangedCallback$2$1;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->playerChangedCallback$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$playerChangedCallback$2$1;

    return-object v0
.end method

.method private final registerPlayerChangedCallback()V
    .locals 2

    .line 108
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->getPlayerChangedCallback()Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$playerChangedCallback$2$1;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$OnPlayerChangedCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->registerOnPlayerChangedCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$OnPlayerChangedCallback;)Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->isRegistered:Z

    return-void
.end method

.method private final unregisterPlayerChangedCallback()V
    .locals 2

    .line 113
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->getPlayerChangedCallback()Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$playerChangedCallback$2$1;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$OnPlayerChangedCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->unregisterOnPlayerChangedCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$OnPlayerChangedCallback;)Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->isRegistered:Z

    return-void
.end method


# virtual methods
.method protected getActivePlayerCallback()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->getActivePlayerCallback()Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter$activePlayerCallback$2$1;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;

    return-object v0
.end method

.method public final onCreate()V
    .locals 0
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->bindPlayerService()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->release()V

    .line 96
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->token:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->unbind(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;)V

    return-void
.end method

.method public final onStart()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->isConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->isRegistered:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->registerPlayerChangedCallback()V

    goto :goto_0

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->bindPlayerService()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onStop()V
    .locals 0
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->unregisterPlayerChangedCallback()V

    return-void
.end method

.method public final testIsRegistered()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 129
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->isRegistered:Z

    return v0
.end method

.method public final testOnCreate()V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->onCreate()V

    return-void
.end method

.method public final testOnDestroy()V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->onDestroy()V

    return-void
.end method

.method public final testOnStop()V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/UiPlayerChangeCenter;->onStop()V

    return-void
.end method
