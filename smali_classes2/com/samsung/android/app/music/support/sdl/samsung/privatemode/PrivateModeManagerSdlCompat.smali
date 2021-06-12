.class public Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;
    }
.end annotation


# static fields
.field public static final ACTION_PRIVATE_MODE_OFF:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

.field public static final ACTION_PRIVATE_MODE_ON:Ljava/lang/String; = "com.samsung.android.intent.action.PRIVATE_MODE_ON"

.field public static final CANCELLED:I = 0x3

.field public static final ERROR_INTERNAL:I = 0x15

.field public static final MOUNTED:I = 0x1

.field public static final PREPARED:I = 0x0

.field public static final PROPERTY_KEY_PRIVATE_MODE:Ljava/lang/String; = "sys.samsung.personalpage.mode"

.field public static final UNMOUNTED:I = 0x2


# instance fields
.field private final mIPrivateModeClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

.field private final mPrivateModeListener:Lcom/samsung/android/privatemode/PrivateModeListener;

.field private final mPrivateModeManager:Lcom/samsung/android/privatemode/PrivateModeManager;

.field private mStateChangedListenerSdl:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mStateChangedListenerSdl:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;

    .line 45
    sget p2, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/4 v0, 0x0

    const/16 v1, 0x89a

    if-lt p2, v1, :cond_0

    .line 46
    new-instance p2, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$1;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mPrivateModeListener:Lcom/samsung/android/privatemode/PrivateModeListener;

    .line 52
    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mIPrivateModeClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    .line 53
    iget-object p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mPrivateModeListener:Lcom/samsung/android/privatemode/PrivateModeListener;

    invoke-static {p1, p2}, Lcom/samsung/android/privatemode/PrivateModeManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/PrivateModeListener;)Lcom/samsung/android/privatemode/PrivateModeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mPrivateModeManager:Lcom/samsung/android/privatemode/PrivateModeManager;

    goto :goto_0

    .line 55
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mPrivateModeListener:Lcom/samsung/android/privatemode/PrivateModeListener;

    .line 56
    new-instance p2, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$2;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mIPrivateModeClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    .line 62
    iget-object p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mIPrivateModeClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->legacyGetInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/IPrivateModeClient;)Lcom/samsung/android/privatemode/PrivateModeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mPrivateModeManager:Lcom/samsung/android/privatemode/PrivateModeManager;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;)Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mStateChangedListenerSdl:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;

    return-object p0
.end method

.method public static getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 88
    invoke-static {p0}, Lcom/samsung/android/privatemode/PrivateModeManager;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isM2PActivating()Z
    .locals 1

    .line 100
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isM2PActivating()Z

    move-result v0

    return v0
.end method

.method public static isPrivateMode()Z
    .locals 1

    .line 96
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateMode()Z

    move-result v0

    return v0
.end method

.method public static isPrivateStorageMounted(Landroid/content/Context;)Z
    .locals 0

    .line 92
    const p0, 0x0

    return p0
.end method

.method public static isReady(Landroid/content/Context;)Z
    .locals 0

    .line 84
    const p0, 0x0

    return p0
.end method

.method private legacyGetInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/IPrivateModeClient;)Lcom/samsung/android/privatemode/PrivateModeManager;
    .locals 7

    const-string v0, "com.samsung.android.privatemode.PrivateModeManager"

    const-string v1, "getInstance"

    const/4 v2, 0x2

    .line 109
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/samsung/android/privatemode/IPrivateModeClient;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 110
    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 112
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    aput-object p2, v1, v6

    const/4 p1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 113
    instance-of v0, p2, Lcom/samsung/android/privatemode/PrivateModeManager;

    if-eqz v0, :cond_0

    .line 114
    check-cast p2, Lcom/samsung/android/privatemode/PrivateModeManager;

    return-object p2

    :cond_0
    return-object p1
.end method

.method private legacyRegisterClient(Lcom/samsung/android/privatemode/IPrivateModeClient;)Landroid/os/IBinder;
    .locals 6

    const-string v0, "com.samsung.android.privatemode.PrivateModeManager"

    const-string v1, "registerClient"

    const/4 v2, 0x1

    .line 121
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/samsung/android/privatemode/IPrivateModeClient;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 122
    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mPrivateModeManager:Lcom/samsung/android/privatemode/PrivateModeManager;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 125
    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 126
    check-cast p1, Landroid/os/IBinder;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mPrivateModeManager:Lcom/samsung/android/privatemode/PrivateModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/privatemode/PrivateModeManager;->binderDied()V

    return-void
.end method

.method public registerListener(Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;)Landroid/os/IBinder;
    .locals 1

    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mStateChangedListenerSdl:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;

    .line 72
    sget p1, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v0, 0x89a

    if-lt p1, v0, :cond_0

    .line 73
    iget-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mPrivateModeManager:Lcom/samsung/android/privatemode/PrivateModeManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mPrivateModeListener:Lcom/samsung/android/privatemode/PrivateModeListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/privatemode/PrivateModeManager;->registerClient(Lcom/samsung/android/privatemode/PrivateModeListener;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mIPrivateModeClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->legacyRegisterClient(Lcom/samsung/android/privatemode/IPrivateModeClient;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public unregisterListener(Landroid/os/IBinder;Z)Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->mPrivateModeManager:Lcom/samsung/android/privatemode/PrivateModeManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/privatemode/PrivateModeManager;->unregisterClient(Landroid/os/IBinder;Z)Z

    move-result p1

    return p1
.end method
