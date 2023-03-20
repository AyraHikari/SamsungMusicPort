.class public Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;
.super Ljava/lang/Object;
.source "DesktopModeManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;
    }
.end annotation


# static fields
.field private static final ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String; = "android.app.action.ENTER_KNOX_DESKTOP_MODE"

.field private static final EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String; = "android.app.action.EXIT_KNOX_DESKTOP_MODE"

.field private static final IS_DESKTOP_MODE:Ljava/lang/String; = "isDesktopMode"

.field private static final PERSIST_SERVICE_DEX_HDMI:Ljava/lang/String; = "persist.service.dex.hdmi"

.field private static final SUPPORT_SAMSUNG_DEX:Z

.field private static final TAG:Ljava/lang/String; = "DesktopModeManagerCompat"

.field private static final mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private static sDesktopModeReceiver:Landroid/content/BroadcastReceiver;

.field private static final sIsDesktopMode:Ljava/lang/reflect/Method;

.field private static sSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP"

    .line 1
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->SUPPORT_SAMSUNG_DEX:Z

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    const-string v1, "com.samsung.android.desktopmode.SemDesktopModeManager"

    const-string v2, "isDesktopMode"

    .line 2
    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/support/samsung/ReflectionExtension;->getReflectionMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sIsDesktopMode:Ljava/lang/reflect/Method;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->mObservers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Z)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->notifyDesktopModeChanged(Z)V

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static ensureDesktopModeManager(Landroid/content/Context;)V
    .locals 1

    const-string v0, "desktopmode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    sput-object p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-void
.end method

.method private static hasItem(Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;

    if-nez v1, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isDesktopDualMode(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->SUPPORT_SAMSUNG_DEX:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v2, 0x317cd

    if-lt v0, v2, :cond_0

    .line 3
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->ensureDesktopModeManager(Landroid/content/Context;)V

    .line 4
    sget-object p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p0

    const/16 v0, 0x66

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isDesktopHdmi()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->SUPPORT_SAMSUNG_DEX:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v2, "persist.service.dex.hdmi"

    .line 2
    invoke-static {v2, v0}, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isDesktopMode(Landroid/content/Context;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->SUPPORT_SAMSUNG_DEX:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_3

    .line 2
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v2, 0x31705

    if-lt v0, v2, :cond_2

    .line 3
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->ensureDesktopModeManager(Landroid/content/Context;)V

    .line 4
    sget-object v2, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    const v3, 0x317cd

    if-lt v0, v3, :cond_1

    .line 5
    invoke-static {v2}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v2}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isMatchedDesktopModeDisplay(Landroid/content/Context;Lcom/samsung/android/desktopmode/SemDesktopModeState;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 6
    :cond_1
    invoke-static {v2}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)Z

    move-result p0

    return p0

    .line 7
    :cond_2
    sget-object p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sIsDesktopMode:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {p0, v0, v2}, Lcom/samsung/android/app/music/support/samsung/ReflectionExtension;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 9
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 10
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method private static isDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)Z
    .locals 1

    .line 11
    iget p0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDesktopModeOrHdmi(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopHdmi()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isDesktopStandaloneMode(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->SUPPORT_SAMSUNG_DEX:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v2, 0x317cd

    if-lt v0, v2, :cond_0

    .line 3
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->ensureDesktopModeManager(Landroid/content/Context;)V

    .line 4
    sget-object p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p0

    const/16 v0, 0x65

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static isMatchedDesktopModeDisplay(Landroid/content/Context;Lcom/samsung/android/desktopmode/SemDesktopModeState;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p1

    const/4 v0, 0x1

    const/16 v1, 0x65

    if-eq p1, v1, :cond_1

    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static notifyDesktopModeChanged(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;

    if-nez v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v1, p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;->onDesktopModeChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static registerListener(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->TAG:Ljava/lang/String;

    const-string v1, "registerListener."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->ensureDesktopModeManager(Landroid/content/Context;)V

    .line 3
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v1, 0x31705

    if-lt v0, v1, :cond_1

    .line 5
    new-instance p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$1;

    invoke-direct {p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$1;-><init>()V

    sput-object p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 6
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sDesktopModeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    .line 8
    new-instance v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$2;

    invoke-direct {v0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sDesktopModeReceiver:Landroid/content/BroadcastReceiver;

    .line 9
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.app.action.ENTER_KNOX_DESKTOP_MODE"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.app.action.EXIT_KNOX_DESKTOP_MODE"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sDesktopModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public static registerObserver(Landroid/app/Activity;Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->SUPPORT_SAMSUNG_DEX:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    .line 2
    invoke-static {p1}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->hasItem(Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->TAG:Ljava/lang/String;

    const-string p1, "registerObserver. but it was already registered."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->TAG:Ljava/lang/String;

    const-string v1, "registerObserver."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->registerListener(Landroid/app/Activity;)V

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private static unregisterListener(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->TAG:Ljava/lang/String;

    const-string v1, "unregisterListener."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v1, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-nez v1, :cond_0

    const-string p0, "unregisterListener. but sSemDesktopModeManager is null."

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v1, 0x31705

    if-lt v0, v1, :cond_1

    .line 5
    sget-object p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sDesktopModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sDesktopModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public static unregisterObserver(Landroid/app/Activity;Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->TAG:Ljava/lang/String;

    const-string v1, "unregisterObserver."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-boolean v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->SUPPORT_SAMSUNG_DEX:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_3

    .line 3
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 9
    :cond_2
    sget-object p1, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->mObservers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->unregisterListener(Landroid/app/Activity;)V

    :cond_3
    return-void
.end method
