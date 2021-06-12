.class public Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;
    }
.end annotation


# static fields
.field public static final ACTION_PRIVATE_MODE_OFF:Ljava/lang/String;

.field public static final ACTION_PRIVATE_MODE_ON:Ljava/lang/String;

.field public static final CANCELLED:I

.field public static final ERROR_INTERNAL:I

.field public static final MOUNTED:I

.field public static final PREPARED:I

.field public static final PROPERTY_KEY_PRIVATE_MODE:Ljava/lang/String;

.field public static final UNMOUNTED:I


# instance fields
.field private final mPrivateModeManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;

.field private final mSemPrivateModeManager:Lcom/samsung/android/privatemode/SemPrivateModeManager;

.field private mStateChangedListener:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;

.field private final mStateChangedListenerSdl:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;

.field private final mStateListener:Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    sput-object v0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->ACTION_PRIVATE_MODE_OFF:Ljava/lang/String;

    .line 16
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "com.samsung.android.intent.action.PRIVATE_MODE_ON"

    sput-object v0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->ACTION_PRIVATE_MODE_ON:Ljava/lang/String;

    .line 20
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->CANCELLED:I

    .line 24
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0x15

    sput v0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->ERROR_INTERNAL:I

    .line 28
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->MOUNTED:I

    .line 31
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->PREPARED:I

    .line 35
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const-string v0, "sys.samsung.personalpage.mode"

    sput-object v0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->PROPERTY_KEY_PRIVATE_MODE:Ljava/lang/String;

    .line 39
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->UNMOUNTED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->mStateChangedListener:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;

    .line 55
    sget-boolean p2, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 56
    new-instance p2, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$1;-><init>(Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->mStateListener:Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;

    .line 62
    iput-object v0, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->mStateChangedListenerSdl:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;

    .line 63
    iget-object p2, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->mStateListener:Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;

    invoke-static {p1, p2}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;)Lcom/samsung/android/privatemode/SemPrivateModeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->mSemPrivateModeManager:Lcom/samsung/android/privatemode/SemPrivateModeManager;

    .line 64
    iput-object v0, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->mPrivateModeManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;

    goto :goto_0

    .line 66
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->mStateListener:Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;

    .line 67
    new-instance p2, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$2;-><init>(Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->mStateChangedListenerSdl:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;

    .line 73
    iput-object v0, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->mSemPrivateModeManager:Lcom/samsung/android/privatemode/SemPrivateModeManager;

    .line 74
    new-instance p2, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;

    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->mStateChangedListenerSdl:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->mPrivateModeManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;)Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->mStateChangedListener:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;

    return-object p0
.end method

.method public static getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 109
    const v0, 0x0

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->getPrivateStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 112
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isPrivateMode()Z
    .locals 2

    .line 125
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 126
    invoke-static {}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 129
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->isPrivateMode()Z

    move-result v0

    return v0
.end method

.method public static isPrivateStorageMounted(Landroid/content/Context;)Z
    .locals 1

    .line 117
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-static {p0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 120
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isReady(Landroid/content/Context;)Z
    .locals 1

    .line 101
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->isPrivateModeReady(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->isReady(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 134
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->mSemPrivateModeManager:Lcom/samsung/android/privatemode/SemPrivateModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->binderDied()V

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->mPrivateModeManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->binderDied()V

    :goto_0
    return-void
.end method

.method public registerClient(Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;)Landroid/os/IBinder;
    .locals 1

    .line 84
    iput-object p1, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->mStateChangedListener:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;

    .line 85
    sget-boolean p1, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->mSemPrivateModeManager:Lcom/samsung/android/privatemode/SemPrivateModeManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->mStateListener:Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->registerListener(Lcom/samsung/android/privatemode/SemPrivateModeManager$StateListener;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->mPrivateModeManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;

    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->mStateChangedListenerSdl:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->registerListener(Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat$StateChangedListenerSdl;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public unregisterClient(Landroid/os/IBinder;Z)Z
    .locals 1

    .line 93
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->mSemPrivateModeManager:Lcom/samsung/android/privatemode/SemPrivateModeManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/privatemode/SemPrivateModeManager;->unregisterListener(Landroid/os/IBinder;Z)Z

    move-result p1

    return p1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->mPrivateModeManagerSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/privatemode/PrivateModeManagerSdlCompat;->unregisterListener(Landroid/os/IBinder;Z)Z

    move-result p1

    return p1
.end method
