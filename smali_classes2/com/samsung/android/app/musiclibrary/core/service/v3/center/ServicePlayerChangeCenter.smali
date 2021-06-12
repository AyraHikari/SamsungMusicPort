.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;
.super Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;
.source "SourceFile"


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final activePlayerCallback$delegate:Lkotlin/Lazy;

.field private final service:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "activePlayerCallback"

    const-string v4, "getActivePlayerCallback()Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2$1;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Service;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;",
            ">;)V"
        }
    .end annotation

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "players"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;->service:Landroid/app/Service;

    .line 16
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;->activePlayerCallback$delegate:Lkotlin/Lazy;

    .line 46
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;->initialize(Ljava/util/List;)V

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;->createServiceObservers()V

    return-void
.end method

.method private final createServiceObservers()V
    .locals 2

    .line 54
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/observer/NotificationUpdater;

    .line 55
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;->service:Landroid/app/Service;

    .line 54
    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/observer/NotificationUpdater;-><init>(Landroid/app/Service;)V

    .line 57
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;->registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V

    return-void
.end method

.method private final getActivePlayerCallback()Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2$1;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;->activePlayerCallback$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2$1;

    return-object v0
.end method


# virtual methods
.method protected getActivePlayerCallback()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter;->getActivePlayerCallback()Lcom/samsung/android/app/musiclibrary/core/service/v3/center/ServicePlayerChangeCenter$activePlayerCallback$2$1;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;

    return-object v0
.end method
