.class public Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;
    }
.end annotation


# static fields
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

.field private static sDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

.field private static sDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private static sSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP"

    .line 24
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->SUPPORT_SAMSUNG_DEX:Z

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->mObservers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Z)V
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->notifyDesktopModeChanged(Z)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static ensureDesktopModeManager(Landroid/content/Context;)V
    .locals 1

    .line 38
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-nez v0, :cond_0

    const-string v0, "desktopmode"

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    sput-object p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    :cond_0
    return-void
.end method

.method private static hasItem(Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;)Z
    .locals 2

    .line 205
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 206
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 208
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;

    if-nez v1, :cond_1

    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 211
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

    .line 63
    sget-boolean v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->SUPPORT_SAMSUNG_DEX:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 64
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v2, 0x317cd

    if-lt v0, v2, :cond_1

    .line 65
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->ensureDesktopModeManager(Landroid/content/Context;)V

    .line 66
    sget-object p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    .line 67
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p0

    const/16 v0, 0x66

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public static isDesktopHdmi()Z
    .locals 3

    .line 94
    sget-boolean v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->SUPPORT_SAMSUNG_DEX:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    const-string v0, "persist.service.dex.hdmi"

    const/4 v2, -0x1

    .line 95
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public static isDesktopMode(Landroid/content/Context;)Z
    .locals 4

    .line 45
    sget-boolean v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->SUPPORT_SAMSUNG_DEX:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_3

    .line 46
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v2, 0x31705

    if-lt v0, v2, :cond_2

    .line 47
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->ensureDesktopModeManager(Landroid/content/Context;)V

    .line 48
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    .line 49
    sget v2, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v3, 0x317cd

    if-lt v2, v3, :cond_1

    .line 50
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isMatchedDesktopModeDisplay(Landroid/content/Context;Lcom/samsung/android/desktopmode/SemDesktopModeState;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 52
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)Z

    move-result p0

    return p0

    .line 55
    :cond_2
    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method private static isDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)Z
    .locals 1

    .line 75
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

.method private static isMatchedDesktopModeDisplay(Landroid/content/Context;Lcom/samsung/android/desktopmode/SemDesktopModeState;)Z
    .locals 2

    .line 79
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p1

    const/4 v0, 0x1

    const/16 v1, 0x65

    if-eq p1, v1, :cond_1

    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    .line 82
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

    .line 145
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 146
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 148
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;

    if-nez v1, :cond_0

    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {v1, p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;->onDesktopModeChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static registerListener(Landroid/app/Activity;)V
    .locals 2

    .line 102
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->TAG:Ljava/lang/String;

    const-string v1, "registerListener."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->ensureDesktopModeManager(Landroid/content/Context;)V

    .line 104
    sget-object p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-nez p0, :cond_0

    return-void

    .line 107
    :cond_0
    sget p0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v0, 0x31705

    if-lt p0, v0, :cond_1

    .line 109
    new-instance p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$1;

    invoke-direct {p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$1;-><init>()V

    sput-object p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 124
    sget-object p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    goto :goto_0

    .line 126
    :cond_1
    sget-object p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    if-nez p0, :cond_2

    .line 127
    new-instance p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$2;

    invoke-direct {p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$2;-><init>()V

    sput-object p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    .line 140
    :cond_2
    sget-object p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    sget-object p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    :goto_0
    return-void
.end method

.method public static registerObserver(Landroid/app/Activity;Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;)V
    .locals 2

    .line 174
    sget-boolean v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->SUPPORT_SAMSUNG_DEX:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    .line 175
    invoke-static {p1}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->hasItem(Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    sget-object p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->TAG:Ljava/lang/String;

    const-string p1, "registerObserver. but it was already registered."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 179
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->TAG:Ljava/lang/String;

    const-string v1, "registerObserver."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->registerListener(Landroid/app/Activity;)V

    .line 183
    :cond_1
    sget-object p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->mObservers:Ljava/util/List;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private static unregisterListener()V
    .locals 2

    .line 158
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->TAG:Ljava/lang/String;

    const-string v1, "unregisterListener."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-nez v0, :cond_0

    .line 160
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->TAG:Ljava/lang/String;

    const-string v1, "unregisterListener. but sSemDesktopModeManager is null."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 163
    :cond_0
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v1, 0x31705

    if-lt v0, v1, :cond_1

    .line 165
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    sget-object v1, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    goto :goto_0

    .line 167
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    if-eqz v0, :cond_2

    .line 168
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->sDesktopModeEventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static unregisterObserver(Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;)V
    .locals 2

    .line 188
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->TAG:Ljava/lang/String;

    const-string v1, "unregisterObserver."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-boolean v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->SUPPORT_SAMSUNG_DEX:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_3

    .line 190
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 191
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 193
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 198
    :cond_2
    sget-object p0, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 199
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->unregisterListener()V

    :cond_3
    return-void
.end method
