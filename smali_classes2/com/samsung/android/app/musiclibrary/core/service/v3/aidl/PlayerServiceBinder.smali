.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$OnPlayerChangedCallback;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field private static final DUMMY_HASH_VALUE:I

.field public static final INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

.field private static final bindMap$delegate:Lkotlin/Lazy;

.field private static final connCallback$delegate:Lkotlin/Lazy;

.field private static final iPlayerChangedCallback:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$iPlayerChangedCallback$1;

.field private static iPlayerService:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;

.field private static final mutex$delegate:Lkotlin/Lazy;

.field private static final playerChangedCallbacks$delegate:Lkotlin/Lazy;

.field private static registered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mutex"

    const-string v4, "getMutex()Lkotlinx/coroutines/sync/Mutex;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playerChangedCallbacks"

    const-string v4, "getPlayerChangedCallbacks()Ljava/util/concurrent/ConcurrentHashMap;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "bindMap"

    const-string v4, "getBindMap()Ljava/util/concurrent/ConcurrentHashMap;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "connCallback"

    const-string v4, "getConnCallback()Landroid/content/ServiceConnection;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 32
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    .line 38
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$mutex$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$mutex$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->mutex$delegate:Lkotlin/Lazy;

    .line 41
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$playerChangedCallbacks$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$playerChangedCallbacks$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->playerChangedCallbacks$delegate:Lkotlin/Lazy;

    .line 44
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$bindMap$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$bindMap$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->bindMap$delegate:Lkotlin/Lazy;

    .line 47
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$iPlayerChangedCallback$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$iPlayerChangedCallback$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->iPlayerChangedCallback:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$iPlayerChangedCallback$1;

    .line 67
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$connCallback$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$connCallback$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->connCallback$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBindMap$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->getBindMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getConnCallback$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)Landroid/content/ServiceConnection;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->getConnCallback()Landroid/content/ServiceConnection;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getIPlayerChangedCallback$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$iPlayerChangedCallback$1;
    .locals 0

    .line 32
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->iPlayerChangedCallback:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$iPlayerChangedCallback$1;

    return-object p0
.end method

.method public static final synthetic access$getIPlayerService$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;
    .locals 0

    .line 32
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->iPlayerService:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;

    return-object p0
.end method

.method public static final synthetic access$getMutex$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->getMutex()Lkotlinx/coroutines/sync/Mutex;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPlayerChangedCallbacks$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->getPlayerChangedCallbacks()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRegistered$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)Z
    .locals 0

    .line 32
    sget-boolean p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->registered:Z

    return p0
.end method

.method public static final synthetic access$notifyPlayerChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;Ljava/util/List;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->notifyPlayerChanged(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$notifyPlayerChangedBinder(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;Ljava/util/List;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->notifyPlayerChangedBinder(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$registerIPlayerChangedCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->registerIPlayerChangedCallback()V

    return-void
.end method

.method public static final synthetic access$setIPlayerService$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;)V
    .locals 0

    .line 32
    sput-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->iPlayerService:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;

    return-void
.end method

.method public static final synthetic access$setRegistered$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;Z)V
    .locals 0

    .line 32
    sput-boolean p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->registered:Z

    return-void
.end method

.method private final getBindMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/content/ContextWrapper;",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->bindMap$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private final getConnCallback()Landroid/content/ServiceConnection;
    .locals 3

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->connCallback$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private final getMutex()Lkotlinx/coroutines/sync/Mutex;
    .locals 3

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->mutex$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    return-object v0
.end method

.method private final getPlayerChangedCallbacks()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$OnPlayerChangedCallback;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->playerChangedCallbacks$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private final notifyPlayerChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notifyPlayerChanged"

    .line 61
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->printLog(Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->getPlayerChangedCallbacks()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 241
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$OnPlayerChangedCallback;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$OnPlayerChangedCallback;->onPlayerChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notifyPlayerChangedBinder(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;",
            ">;)V"
        }
    .end annotation

    .line 55
    check-cast p1, Ljava/lang/Iterable;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 238
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 239
    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;

    .line 55
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 56
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->notifyPlayerChanged(Ljava/util/List;)V

    return-void
.end method

.method private final registerIPlayerChangedCallback()V
    .locals 9

    .line 250
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 189
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->registered:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$registerIPlayerChangedCallback$2$1;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$registerIPlayerChangedCallback$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 197
    :goto_0
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 252
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string v0, "SMUSIC-SV"

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x5b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-string v5, "Thread.currentThread()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\t "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/concurrent/TimeUnitExtensionKt;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ms\t\tUi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "registerIPlayerChangedCallback"

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final tsp(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 273
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 274
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    .line 275
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string v0, "SMUSIC-SV"

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x5b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-string v5, "Thread.currentThread()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\t "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/concurrent/TimeUnitExtensionKt;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ms\t\tUi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private final unregisterIPlayerChangedCallback()V
    .locals 9

    .line 259
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 210
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->registered:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$unregisterIPlayerChangedCallback$2$1;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$unregisterIPlayerChangedCallback$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 218
    :goto_0
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 261
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string v0, "SMUSIC-SV"

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x5b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const-string v5, "Thread.currentThread()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]\t "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/concurrent/TimeUnitExtensionKt;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ms\t\tUi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "unregisterIPlayerChangedCallback"

    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final bind(Landroid/content/Context;Ljava/lang/Class;Landroid/content/ServiceConnection;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;",
            "Landroid/content/ServiceConnection;",
            ")",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;-><init>(Landroid/content/ContextWrapper;)V

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->getBindMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 118
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$bind$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$bind$1;-><init>(Landroid/content/ContextWrapper;Ljava/lang/Class;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->getBindMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 3

    .line 34
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->a()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/JobKt;->a(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getPlayer(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;
    .locals 3

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    .line 163
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->iPlayerService:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;->getPlayers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    .line 247
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;

    .line 164
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;

    const-string v0, "it"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    goto :goto_0

    .line 166
    :cond_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Empty;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Empty;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    :goto_0
    return-object p1
.end method

.method public final getPlayers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;",
            ">;"
        }
    .end annotation

    .line 157
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->iPlayerService:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;->getPlayers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 244
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 245
    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;

    .line 158
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_0
    check-cast v1, Ljava/util/List;

    goto :goto_1

    .line 159
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public final getTopPlayer()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;
    .locals 3

    .line 170
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->iPlayerService:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;->getPlayers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 171
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "get(0)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;)V

    .line 170
    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    goto :goto_1

    .line 172
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Empty;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player$Empty;

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    :goto_1
    return-object v1
.end method

.method public final hasConnection()Z
    .locals 1

    .line 65
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->iPlayerService:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final printLog(Ljava/lang/String;)V
    .locals 4

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 267
    check-cast v0, Ljava/lang/String;

    const-string v0, "SMUSIC-SV"

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Thread.currentThread()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\t "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ui "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final registerOnPlayerChangedCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$OnPlayerChangedCallback;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$OnPlayerChangedCallback;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$OnPlayerChangedCallback;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->getPlayerChangedCallbacks()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 179
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->iPlayerService:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->registerIPlayerChangedCallback()V

    goto :goto_0

    .line 182
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final testBinderCount()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->getBindMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public final testIsRegistered()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 235
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->registered:Z

    return v0
.end method

.method public final testNotifyPlayerChanged()V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->getPlayers()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->notifyPlayerChanged(Ljava/util/List;)V

    return-void
.end method

.method public final unbind(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;)V
    .locals 7

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->getBindMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;->getWrappedContext$musicLibrary_release()Landroid/content/ContextWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->getBindMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$unbind$$inlined$also$lambda$1;

    const/4 v4, 0x0

    invoke-direct {v0, v4, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$unbind$$inlined$also$lambda$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$ServiceToken;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final unregisterOnPlayerChangedCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$OnPlayerChangedCallback;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$OnPlayerChangedCallback;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$OnPlayerChangedCallback;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->getPlayerChangedCallbacks()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 203
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->unregisterIPlayerChangedCallback()V

    :cond_0
    return-object v0
.end method
