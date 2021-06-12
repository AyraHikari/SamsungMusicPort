.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$PlayerServiceStubImpl;,
        Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;

.field private static final DEBUG:Z


# instance fields
.field private final activeMediaCenter:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;

.field private final iPlayerChangedCallbacks$delegate:Lkotlin/Lazy;

.field private final playerParcels$delegate:Lkotlin/Lazy;

.field private final playerServiceStubImpl$delegate:Lkotlin/Lazy;

.field private final players$delegate:Lkotlin/Lazy;

.field private final serviceCommandReceiver$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "serviceCommandReceiver"

    const-string v4, "getServiceCommandReceiver()Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "players"

    const-string v4, "getPlayers()Ljava/util/ArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "iPlayerChangedCallbacks"

    const-string v4, "getIPlayerChangedCallbacks()Ljava/util/ArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playerServiceStubImpl"

    const-string v4, "getPlayerServiceStubImpl()Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$PlayerServiceStubImpl;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playerParcels"

    const-string v4, "getPlayerParcels()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$serviceCommandReceiver$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$serviceCommandReceiver$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->serviceCommandReceiver$delegate:Lkotlin/Lazy;

    .line 38
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$players$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$players$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->players$delegate:Lkotlin/Lazy;

    .line 57
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$iPlayerChangedCallbacks$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$iPlayerChangedCallbacks$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->iPlayerChangedCallbacks$delegate:Lkotlin/Lazy;

    .line 58
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$playerServiceStubImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$playerServiceStubImpl$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->playerServiceStubImpl$delegate:Lkotlin/Lazy;

    .line 62
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$playerParcels$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$playerParcels$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->playerParcels$delegate:Lkotlin/Lazy;

    .line 68
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;-><init>()V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->activeMediaCenter:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;

    return-void
.end method

.method public static final synthetic access$changeActivePlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->changeActivePlayer(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getActiveMediaCenter$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->activeMediaCenter:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;

    return-object p0
.end method

.method public static final synthetic access$getPlayerParcels$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;)Ljava/util/List;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->getPlayerParcels()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPlayers$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->getPlayers()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$notifyPlayerChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;Ljava/util/List;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->notifyPlayerChanged(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$registerOnPlayerChangedCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerChangedCallback;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->registerOnPlayerChangedCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerChangedCallback;)V

    return-void
.end method

.method public static final synthetic access$unregisterOnPlayerChangedCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerChangedCallback;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->unregisterOnPlayerChangedCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerChangedCallback;)V

    return-void
.end method

.method private final changeActivePlayer(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;",
            ">;"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->getPlayers()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 279
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    .line 155
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->activeMediaCenter:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;->changePlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)Lcom/samsung/android/app/musiclibrary/core/service/v3/ObserverGroup;

    .line 157
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->changeToLegacyObservable(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)V

    goto :goto_0

    .line 161
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->getPlayerParcels()Ljava/util/List;

    move-result-object v0

    .line 281
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$changeActivePlayer$$inlined$apply$lambda$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$changeActivePlayer$$inlined$apply$lambda$1;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-object v0
.end method

.method private final composeActiveCenterObservers()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->activeMediaCenter:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;

    .line 72
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/observer/NotificationUpdater;

    move-object v2, p0

    check-cast v2, Landroid/app/Service;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/observer/NotificationUpdater;-><init>(Landroid/app/Service;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;

    .line 71
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;->registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V

    return-void
.end method

.method private final getIPlayerChangedCallbacks()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerChangedCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->iPlayerChangedCallbacks$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private final getPlayerParcels()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->playerParcels$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getPlayerServiceStubImpl()Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$PlayerServiceStubImpl;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->playerServiceStubImpl$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$PlayerServiceStubImpl;

    return-object v0
.end method

.method private final getPlayers()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->players$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private final getServiceCommandReceiver()Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->serviceCommandReceiver$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;

    return-object v0
.end method

.method private final initPlayQueue()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->activeMediaCenter:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;->getPlayer()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.samsung.android.app.music.core.customAction.RELOAD_QUEUE"

    const/4 v2, 0x0

    .line 149
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->sendCustom(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final init_active_player()V
    .locals 4

    .line 77
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;

    const-string v1, "TODO_temp_init_active_player"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;->printLog$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->getPlayers()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 275
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    .line 79
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$init_active_player$$inlined$forEach$lambda$1;

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$init_active_player$$inlined$forEach$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V

    goto :goto_0

    .line 99
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueUtils;->getActivePlayerTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->changeActivePlayer(Ljava/lang/String;)Ljava/util/List;

    return-void
.end method

.method private final notifyPlayerChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;",
            ">;)V"
        }
    .end annotation

    .line 178
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;

    const-string v1, "notifyPlayerChanged"

    const/4 v2, 0x0

    .line 180
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->getIPlayerChangedCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 289
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 290
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    .line 292
    :try_start_0
    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerChangedCallback;

    .line 183
    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerChangedCallback;->onPlayerChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 298
    check-cast v2, Ljava/lang/Exception;

    goto :goto_1

    :catch_1
    move-exception v2

    .line 294
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 295
    check-cast v2, Ljava/lang/Exception;

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final registerOnPlayerChangedCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerChangedCallback;)V
    .locals 1

    .line 170
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->getIPlayerChangedCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast p1, Landroid/os/IInterface;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/os/IInterfaceExtensionKt;->a(Ljava/util/List;Landroid/os/IInterface;)V

    return-void
.end method

.method private final unregisterOnPlayerChangedCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/callback/IPlayerChangedCallback;)V
    .locals 1

    .line 174
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->getIPlayerChangedCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast p1, Landroid/os/IInterface;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/os/IInterfaceExtensionKt;->b(Ljava/util/List;Landroid/os/IInterface;)V

    return-void
.end method


# virtual methods
.method public abstract changeToLegacyObservable(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)V
.end method

.method public abstract getServiceOptions()Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .line 125
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;->printLifeCycleLog$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->initPlayQueue()V

    .line 127
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->getPlayerServiceStubImpl()Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$PlayerServiceStubImpl;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 103
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;->printLifeCycleLog$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->init_active_player()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 136
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;->printLifeCycleLog$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->getPlayers()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 277
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    .line 138
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->release()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    .line 109
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x20

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p2, v1, p3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;->printLifeCycleLog$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->getServiceCommandReceiver()Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/receiver/ServiceCommandReceiver;->onStartCommand(Landroid/content/Intent;)Z

    :cond_0
    const-string p2, "exit"

    if-eqz p1, :cond_1

    .line 114
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 115
    sget-object p1, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$onStartCommand$1;

    invoke-direct {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$onStartCommand$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 120
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->initPlayQueue()V

    return p3
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 3

    .line 143
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskRemoved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;->printLifeCycleLog$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 4

    .line 131
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnbind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;->printLifeCycleLog$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService$Companion;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 132
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public final testGetActiveMediaCenter()Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->activeMediaCenter:Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerMediaCenter;

    return-object v0
.end method

.method public final testGetPlayers()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;",
            ">;"
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/PlayerService;->getPlayers()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
