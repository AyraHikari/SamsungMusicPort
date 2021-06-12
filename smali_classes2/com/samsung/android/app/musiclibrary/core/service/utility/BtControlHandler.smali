.class public final Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SV"


# instance fields
.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 33
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method private bindAdapterInternal()V
    .locals 4

    .line 47
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;)V

    const/4 v3, 0x2

    .line 50
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-SV"

    const-string v1, "onStart. Getting Headset Proxy failed"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public bindAdapter()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->bindAdapterInternal()V

    return-void
.end method

.method public declared-synchronized isBtConnected()Z
    .locals 2

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 69
    monitor-exit p0

    return v1

    .line 73
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 78
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    .line 76
    :catch_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 67
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 3

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 83
    monitor-exit p0

    return-void

    .line 85
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_1
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/BtControlHandler;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 81
    monitor-exit p0

    throw v0
.end method
