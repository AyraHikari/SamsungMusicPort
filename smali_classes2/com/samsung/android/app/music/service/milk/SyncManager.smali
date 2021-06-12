.class public Lcom/samsung/android/app/music/service/milk/SyncManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# static fields
.field private static a:Lcom/samsung/android/app/music/service/milk/SyncManager;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

.field private f:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->d:Z

    .line 43
    new-instance v0, Lcom/samsung/android/app/music/service/milk/SyncManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/SyncManager$1;-><init>(Lcom/samsung/android/app/music/service/milk/SyncManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->f:Ljava/lang/Runnable;

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->b:Landroid/content/Context;

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->c:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->e:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .line 58
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->e:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->a()V

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->e:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->c()V

    .line 60
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->e:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/SyncManager;
    .locals 2

    .line 64
    sget-object v0, Lcom/samsung/android/app/music/service/milk/SyncManager;->a:Lcom/samsung/android/app/music/service/milk/SyncManager;

    if-nez v0, :cond_1

    .line 65
    const-class v0, Lcom/samsung/android/app/music/service/milk/SyncManager;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/service/milk/SyncManager;->a:Lcom/samsung/android/app/music/service/milk/SyncManager;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/samsung/android/app/music/service/milk/SyncManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/SyncManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/music/service/milk/SyncManager;->a:Lcom/samsung/android/app/music/service/milk/SyncManager;

    .line 69
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 71
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->a:Lcom/samsung/android/app/music/service/milk/SyncManager;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/SyncManager;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/SyncManager;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "SyncManager"

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSync byLocalMusicMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "SyncManager"

    const-string v0, "isUsingData false, do not sync"

    .line 92
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->d:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->d:Z

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->getUserStatus()I

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "SyncManager"

    const-string v0, "no account user, do not sync"

    .line 100
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 103
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->getIsNewSAUser()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 104
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->b:Landroid/content/Context;

    const-string v0, "com.samsung.common.account.sign_in_from"

    .line 105
    invoke-static {}, Lcom/samsung/android/app/music/util/ConvertSystemTime;->d()J

    move-result-wide v1

    .line 104
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 107
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/SyncManager;->c()V

    :goto_0
    return-void
.end method

.method private c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/request/usermy/SubscriptionApis;->a(Landroid/content/Context;)V

    .line 114
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SyncManager"

    const-string v1, "isMyMusicMode false. start to sync"

    .line 115
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis;->a(Landroid/content/Context;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/milk/SyncManager;->b(Z)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SyncManager"

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkStateChanged all.connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / hasPending :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->d:Z

    if-eqz p1, :cond_0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SyncManager;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    const-string v0, "SyncManager"

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOfflineMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->f:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SyncManager;->e:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->b()V

    const/4 v0, 0x0

    .line 124
    sput-object v0, Lcom/samsung/android/app/music/service/milk/SyncManager;->a:Lcom/samsung/android/app/music/service/milk/SyncManager;

    return-void
.end method
