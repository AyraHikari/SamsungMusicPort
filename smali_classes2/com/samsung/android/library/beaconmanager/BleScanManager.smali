.class public Lcom/samsung/android/library/beaconmanager/BleScanManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/library/beaconmanager/BleScanManager$IServiceStateCallback;
    }
.end annotation


# static fields
.field private static final MSG_BIND:I = 0x0

.field private static PACKAGE_NAME:Ljava/lang/String; = ""

.field private static TAG:Ljava/lang/String; = "BleScanManager(180302)"


# instance fields
.field private mBleCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

.field private mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsBinded:Z

.field private mLock:Ljava/lang/Object;

.field private mScanCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceStateCallback:Lcom/samsung/android/library/beaconmanager/BleScanManager$IServiceStateCallback;

.field private mTvCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

.field private mTvCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mIsBinded:Z

    .line 26
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mLock:Ljava/lang/Object;

    .line 33
    new-instance v1, Lcom/samsung/android/library/beaconmanager/BleScanManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/library/beaconmanager/BleScanManager$1;-><init>(Lcom/samsung/android/library/beaconmanager/BleScanManager;)V

    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 58
    new-instance v1, Lcom/samsung/android/library/beaconmanager/BleScanManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/library/beaconmanager/BleScanManager$2;-><init>(Lcom/samsung/android/library/beaconmanager/BleScanManager;)V

    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    .line 68
    new-instance v1, Lcom/samsung/android/library/beaconmanager/BleScanManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/library/beaconmanager/BleScanManager$3;-><init>(Lcom/samsung/android/library/beaconmanager/BleScanManager;)V

    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mScanCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    .line 77
    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/library/beaconmanager/BleScanManager$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/library/beaconmanager/BleScanManager$4;-><init>(Lcom/samsung/android/library/beaconmanager/BleScanManager;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mHandler:Landroid/os/Handler;

    .line 113
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mContext:Landroid/content/Context;

    .line 115
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    :goto_0
    sget-object p1, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "BleScanManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bind sendMessage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/library/beaconmanager/BleScanManager$IServiceStateCallback;)V
    .locals 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mIsBinded:Z

    .line 26
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mLock:Ljava/lang/Object;

    .line 33
    new-instance v1, Lcom/samsung/android/library/beaconmanager/BleScanManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/library/beaconmanager/BleScanManager$1;-><init>(Lcom/samsung/android/library/beaconmanager/BleScanManager;)V

    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 58
    new-instance v1, Lcom/samsung/android/library/beaconmanager/BleScanManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/library/beaconmanager/BleScanManager$2;-><init>(Lcom/samsung/android/library/beaconmanager/BleScanManager;)V

    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    .line 68
    new-instance v1, Lcom/samsung/android/library/beaconmanager/BleScanManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/library/beaconmanager/BleScanManager$3;-><init>(Lcom/samsung/android/library/beaconmanager/BleScanManager;)V

    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mScanCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    .line 77
    new-instance v1, Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/library/beaconmanager/BleScanManager$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/library/beaconmanager/BleScanManager$4;-><init>(Lcom/samsung/android/library/beaconmanager/BleScanManager;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mHandler:Landroid/os/Handler;

    .line 97
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mContext:Landroid/content/Context;

    .line 99
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    :goto_0
    iput-object p2, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceStateCallback:Lcom/samsung/android/library/beaconmanager/BleScanManager$IServiceStateCallback;

    .line 107
    sget-object p1, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BleScanManager"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bind sendMessage"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/library/beaconmanager/BleScanManager;)Lcom/samsung/android/library/beaconmanager/IBleProxyService;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    return-object p0
.end method

.method static synthetic access$202(Lcom/samsung/android/library/beaconmanager/BleScanManager;Lcom/samsung/android/library/beaconmanager/IBleProxyService;)Lcom/samsung/android/library/beaconmanager/IBleProxyService;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/library/beaconmanager/BleScanManager;)Lcom/samsung/android/library/beaconmanager/BleScanManager$IServiceStateCallback;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceStateCallback:Lcom/samsung/android/library/beaconmanager/BleScanManager$IServiceStateCallback;

    return-object p0
.end method

.method static synthetic access$402(Lcom/samsung/android/library/beaconmanager/BleScanManager;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mIsBinded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/library/beaconmanager/BleScanManager;)Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/library/beaconmanager/BleScanManager;)Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/library/beaconmanager/BleScanManager;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/library/beaconmanager/BleScanManager;->bind()V

    return-void
.end method

.method private bind()V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "package"

    .line 128
    iget-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.beaconmanager"

    const-string v4, "com.samsung.android.beaconmanager.BeaconService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 132
    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_0

    .line 133
    sget-object v2, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "BleScanManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " bindService"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 135
    sget-object v1, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "BleScanManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " bind ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_0
    sget-object v1, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "BleScanManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " No ..bindService"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getBeaconManagerVersion()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 260
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getBeaconManagerVersion"

    move-object v4, v0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 262
    sget-object v3, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " NoSuchMethodException exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_1

    .line 268
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 270
    sget-object v2, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Invoke exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public registerScanCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    .line 222
    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    if-eqz p1, :cond_0

    .line 223
    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mScanCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/samsung/android/library/beaconmanager/IBleProxyService;->registerScanCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 226
    :goto_0
    sget-object p2, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p4, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "registerScanCallback, return "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public registerTvCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 175
    sget-object p1, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "registerTvCallback "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fail : tvCallback is null"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    if-eqz v1, :cond_1

    .line 182
    sget-object p1, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "registerTvCallback, That work is already under way."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 185
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    .line 187
    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/library/beaconmanager/IBleProxyService;->registerTvCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;I)Z

    move-result v0

    .line 190
    :cond_2
    sget-object p1, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "registerTvCallback, return "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public terminate()V
    .locals 6

    .line 143
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    sget-object v2, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "BleScanManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " terminate unbind service, isBind : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mIsBinded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v2, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "BleScanManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " terminate ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 151
    :try_start_1
    sget-object v2, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "BleScanManager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " terminate unregisterTvCallback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    iget-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    invoke-interface {v2, v3}, Lcom/samsung/android/library/beaconmanager/IBleProxyService;->unregisterTvCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 154
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 158
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mIsBinded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 160
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    .line 162
    :try_start_4
    sget-object v3, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "BleScanManager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " terminate Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 166
    iput-boolean v2, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mIsBinded:Z

    .line 167
    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 168
    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    .line 169
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public unregisterScanCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 233
    sget-object p1, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Callback is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 240
    sget-object p1, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Do not unregisterScanCallback.Because Callback is not equals !"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 244
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mScanCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    invoke-interface {p1, v0}, Lcom/samsung/android/library/beaconmanager/IBleProxyService;->unregisterScanCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;)Z

    move-result v1

    :cond_2
    const/4 p1, 0x0

    .line 247
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyCallback;

    .line 248
    sget-object p1, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "unregisterScanCallback, return "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public unregisterTvCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 196
    sget-object p1, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", TVCallback is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 203
    sget-object p1, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Do not unregisterCallBack.Because TVCallback is not equals !"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mBleService:Lcom/samsung/android/library/beaconmanager/IBleProxyService;

    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackListener:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    invoke-interface {p1, v0}, Lcom/samsung/android/library/beaconmanager/IBleProxyService;->unregisterTvCallback(Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;)Z

    move-result v1

    :cond_2
    const/4 p1, 0x0

    .line 211
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanManager;->mTvCallbackfromApp:Lcom/samsung/android/library/beaconmanager/IBleProxyTvCallback;

    .line 212
    sget-object p1, Lcom/samsung/android/library/beaconmanager/BleScanManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/library/beaconmanager/BleScanManager;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "unregisterTvCallback, return "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
