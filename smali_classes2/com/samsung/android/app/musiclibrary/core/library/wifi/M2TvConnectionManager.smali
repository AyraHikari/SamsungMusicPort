.class public final Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$BleConnectionReceiver;,
        Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$OnTvStateChangeListener;,
        Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field private static final BLE_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.app.withtv.m2tvconnect.OMXCheckService"

.field private static final BLE_SERVICE_PACKAGE:Ljava/lang/String;

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$Companion;

.field private static volatile INSTANCE:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-M2TvManager"

.field private static final SUPPORT_CASTING_FINDER:Z

.field private static final SUPPORT_SMART_MIRRORING:Z

.field private static final TAG:Ljava/lang/String; = "M2TvManager"


# instance fields
.field private final bleConnectionReceiver$delegate:Lkotlin/Lazy;

.field private final castingFinderListener$delegate:Lkotlin/Lazy;

.field private final castingFinderManager$delegate:Lkotlin/Lazy;

.field private final context:Landroid/content/Context;

.field private isDeviceAvailable:Z

.field private isServiceStarted:Z

.field private final onTvStateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$OnTvStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "bleConnectionReceiver"

    const-string v4, "getBleConnectionReceiver()Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$BleConnectionReceiver;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v3, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "castingFinderListener"

    const-string v5, "getCastingFinderListener()Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;"

    invoke-direct {v1, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v4, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const-string v5, "castingFinderManager"

    const-string v6, "getCastingFinderManager()Lcom/samsung/android/castingfindermanager/CastingFinderManager;"

    invoke-direct {v1, v4, v5, v6}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$Companion;

    .line 288
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v1, 0x31706

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->SUPPORT_SMART_MIRRORING:Z

    .line 290
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v1, 0x31769

    if-lt v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    sput-boolean v2, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->SUPPORT_CASTING_FINDER:Z

    .line 292
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->SUPPORT_SMART_MIRRORING:Z

    if-eqz v0, :cond_2

    const-string v0, "com.samsung.android.smartmirroring"

    goto :goto_1

    :cond_2
    const-string v0, "com.samsung.android.app.withtv"

    .line 291
    :goto_1
    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->BLE_SERVICE_PACKAGE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->context:Landroid/content/Context;

    .line 23
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->packageName:Ljava/lang/String;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->onTvStateChangeListeners:Ljava/util/List;

    .line 25
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$bleConnectionReceiver$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$bleConnectionReceiver$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->bleConnectionReceiver$delegate:Lkotlin/Lazy;

    .line 26
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderListener$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderListener$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->castingFinderListener$delegate:Lkotlin/Lazy;

    .line 33
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderManager$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->castingFinderManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;
    .locals 1

    .line 21
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    return-object v0
.end method

.method public static final synthetic access$getOnTvStateChangeListeners$p(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;)Ljava/util/List;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->onTvStateChangeListeners:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getPackageName$p(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$notifyDeviceAvailable(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->notifyDeviceAvailable(Z)V

    return-void
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;)V
    .locals 0

    .line 21
    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    return-void
.end method

.method private final getBleConnectionReceiver()Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$BleConnectionReceiver;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->bleConnectionReceiver$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$BleConnectionReceiver;

    return-object v0
.end method

.method private final getBleServiceIntent(Z)Landroid/content/Intent;
    .locals 3

    const-string v0, "M2TvManager"

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBleServiceIntent() start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->SUPPORT_SMART_MIRRORING:Z

    if-eqz v1, :cond_0

    const-string v1, "com.samsung.intent.action.CastingFinderService_Trigger"

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->BLE_SERVICE_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string p1, "more_actions_package_name"

    .line 110
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "app_binder"

    .line 112
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 113
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    .line 117
    :cond_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->BLE_SERVICE_PACKAGE:Ljava/lang/String;

    const-string v1, "com.samsung.android.app.withtv.m2tvconnect.OMXCheckService"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private final getCastingFinderListener()Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->castingFinderListener$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;

    return-object v0
.end method

.method private final getCastingFinderManager()Lcom/samsung/android/castingfindermanager/CastingFinderManager;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->castingFinderManager$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    return-object v0
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$Companion;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    move-result-object p0

    return-object p0
.end method

.method private final isMatchedTobeNotify(Z)Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->isServiceStarted:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->isDeviceAvailable()Z

    move-result v0

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->needToCheckDmrPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final needToCheckDmrPlaying()Z
    .locals 2

    .line 217
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->SUPPORT_CASTING_FINDER:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 219
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 220
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isDmrPlaying()Z

    move-result v0

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isDLNAConnected(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private final notifyDeviceAvailable(Z)V
    .locals 3

    .line 196
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->isMatchedTobeNotify(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->isDeviceAvailable:Z

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->onTvStateChangeListeners:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 323
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$OnTvStateChangeListener;

    .line 199
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$OnTvStateChangeListener;->onDeviceAvailable(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "M2TvManager"

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDeviceAvailable ignore (isServiceStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->isServiceStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isAvailable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isDeviceAvailable="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->isDeviceAvailable()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private final registerBleIntentReceiver()V
    .locals 3

    const-string v0, "M2TvManager"

    const-string v1, "registerBleIntentReceiver"

    .line 142
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.m2tv.TV_DETECTED"

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.m2tv.TV_DETACHED"

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->SUPPORT_SMART_MIRRORING:Z

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.m2tv.TV_LIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string v1, "com.sec.android.m2tv.TV_SHOW_TV_ON_DLG"

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.m2tv.TV_CANCEL_TV_ON_DLG"

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->getBleConnectionReceiver()Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$BleConnectionReceiver;

    move-result-object v2

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private final registerCastingFinderListener()V
    .locals 2

    const-string v0, "M2TvManager"

    const-string v1, "registerCastingFinderListener"

    .line 124
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->getCastingFinderManager()Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->a()V

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->getCastingFinderListener()Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;)V

    return-void
.end method

.method public static final requestConnection(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$Companion;->requestConnection(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final startBleService()V
    .locals 4

    const-string v0, "M2TvManager"

    const-string v1, "startBleService"

    .line 68
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 71
    :try_start_0
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->SUPPORT_CASTING_FINDER:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->registerCastingFinderListener()V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->getBleServiceIntent(Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->registerBleIntentReceiver()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SMUSIC-M2TvManager"

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startBleService() error= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 69
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->isServiceStarted:Z

    return-void
.end method

.method private final stopBleService()V
    .locals 2

    .line 86
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->isServiceStarted:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->notifyDeviceAvailable(Z)V

    .line 89
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->SUPPORT_CASTING_FINDER:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->unregisterCastingFinderListener()V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->getBleServiceIntent(Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->unregisterBleIntentReceiver()V

    :goto_0
    const-string v0, "M2TvManager"

    const-string v1, "stopBleService()"

    .line 95
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "M2TvManager"

    const-string v1, "stopBleService() Service was not started."

    .line 98
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private final unregisterBleIntentReceiver()V
    .locals 2

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->getBleConnectionReceiver()Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$BleConnectionReceiver;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "M2TvManager"

    const-string v1, "unregisterBleIntentReceiver() IllegalArgumentException"

    .line 157
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final unregisterCastingFinderListener()V
    .locals 2

    const-string v0, "M2TvManager"

    const-string v1, "unregisterCastingFinderListener"

    .line 133
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->getCastingFinderManager()Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->c()V

    .line 138
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->getCastingFinderManager()Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b()V

    return-void
.end method


# virtual methods
.method public final addOnTvStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$OnTvStateChangeListener;)V
    .locals 2

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->onTvStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->onTvStateChangeListeners:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->startBleService()V

    :cond_0
    const-string p1, "M2TvManager"

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOnTvStateChangeListener() size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->onTvStateChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final disconnectDevice()V
    .locals 3

    .line 189
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->SUPPORT_CASTING_FINDER:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "M2TvManager"

    const-string v1, " disconnectDevice()"

    .line 190
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.m2tv.TV_REQUEST_DISCONNECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final isDeviceAvailable()Z
    .locals 2

    .line 40
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->isServiceStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->isDeviceAvailable:Z

    goto :goto_0

    :cond_0
    const-string v0, "M2TvManager"

    const-string v1, "isDeviceAvailable() Service was not started."

    .line 42
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final removeOnTvStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$OnTvStateChangeListener;)V
    .locals 2

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->onTvStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 56
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->onTvStateChangeListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->stopBleService()V

    :cond_0
    const-string p1, "M2TvManager"

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeOnTvStateChangeListener() size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->onTvStateChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final requestDeviceList(Z)V
    .locals 4

    const-string v0, "M2TvManager"

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " requestDeviceList() dlnaEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->SUPPORT_CASTING_FINDER:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->getCastingFinderManager()Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->d()V

    goto :goto_0

    .line 172
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->SUPPORT_SMART_MIRRORING:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.m2tv.TV_SELECTED"

    .line 173
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "more_actions_screen_sharing_mode"

    .line 176
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->context:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->getScreenSharingMode(Landroid/content/Context;Z)I

    move-result p1

    .line 174
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_package"

    .line 178
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.m2tv.TV_SELECTED"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "popup_request"

    const/4 v2, 0x0

    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "extra_package"

    .line 183
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->isDeviceAvailable:Z

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->isServiceStarted:Z

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->onTvStateChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->SUPPORT_CASTING_FINDER:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->unregisterBleIntentReceiver()V

    :cond_0
    return-void
.end method

.method public final setDeviceAvailable(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->isDeviceAvailable:Z

    return-void
.end method

.method public final setDlnaEnabled(Z)V
    .locals 3

    .line 161
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->isServiceStarted:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->SUPPORT_CASTING_FINDER:Z

    if-eqz v0, :cond_0

    const-string v0, "M2TvManager"

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDlnaEnabled() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->getCastingFinderManager()Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->a(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "M2TvManager"

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDlnaEnabled() failed (service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->isServiceStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
