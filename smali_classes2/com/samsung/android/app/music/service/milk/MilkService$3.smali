.class Lcom/samsung/android/app/music/service/milk/MilkService$3;
.super Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/MilkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/milk/MilkService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/MilkService;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public checkPermissionAllGranted()V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/network/init/StartClientPermissions;->b(Landroid/content/Context;)V

    return-void
.end method

.method public checkSubscriptionUser(I)I
    .locals 2

    .line 358
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/MilkService;->a()I

    move-result p1

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->a(Lcom/samsung/android/app/music/service/milk/MilkService;)Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(II)V

    return p1
.end method

.method public drmLicenseExpiredTest(I)Z
    .locals 3

    .line 365
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "validity"

    const-wide v1, 0x1652ea6a998L

    .line 366
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 367
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 368
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MDrmTracks;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 367
    invoke-static {v0, v1, p1, v2, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 371
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LMarkany/MILK/DRM/DRMManager;->getInstance(Landroid/content/Context;)LMarkany/MILK/DRM/DRMManager;

    move-result-object p1

    const-string v0, "20180812235959"

    invoke-virtual {p1, v0}, LMarkany/MILK/DRM/DRMManager;->updateAllExpiryDate(Ljava/lang/String;)J

    const-string p1, "drmLicenseExpiredTest"

    const-string v0, "updateAllExpiryDate : 20180812235959"

    .line 372
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getAccessToken(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHttpsUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->e(Lcom/samsung/android/app/music/service/milk/MilkService;)Lcom/samsung/android/app/music/network/init/StartClientProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/network/init/StartClientProvider;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->e(Lcom/samsung/android/app/music/service/milk/MilkService;)Lcom/samsung/android/app/music/network/init/StartClientProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/network/init/StartClientProvider;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser(I)Lcom/samsung/android/app/music/model/UserInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkService;->a(Lcom/samsung/android/app/music/service/milk/MilkService;)Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method public registerCallback(Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->c(Lcom/samsung/android/app/music/service/milk/MilkService;)I

    move-result v0

    if-eqz p1, :cond_1

    .line 295
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/MilkService;->b()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 296
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->d(Lcom/samsung/android/app/music/service/milk/MilkService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "MilkService"

    const-string v3, "registerCallback() Callback is empty"

    .line 297
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkService;->a(Lcom/samsung/android/app/music/service/milk/MilkService;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->d(Lcom/samsung/android/app/music/service/milk/MilkService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "MilkService"

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerCallback() registerCallback callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "re "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return v0
.end method

.method public requestLogin(IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->a()I

    move-result v0

    .line 334
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->a(Lcom/samsung/android/app/music/service/milk/MilkService;)Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v0, p2}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Landroid/content/Context;IIZ)V

    return v0
.end method

.method public setSaAccessToken(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkService;->a(Lcom/samsung/android/app/music/service/milk/MilkService;)Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/model/UserInfo;->setSAtoken(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MilkService"

    const-string v1, "stop service"

    .line 327
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->stopSelf()V

    return-void
.end method

.method public syncFavorites()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->f(Lcom/samsung/android/app/music/service/milk/MilkService;)Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method public syncPlaylists()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->f(Lcom/samsung/android/app/music/service/milk/MilkService;)Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MilkService"

    const-string v1, "unregisterCallback() unregisterCallback"

    .line 312
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 315
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/MilkService;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->d(Lcom/samsung/android/app/music/service/milk/MilkService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "MilkService"

    const-string v1, "unregisterCallback() Callback is empty"

    .line 317
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    monitor-exit v0

    return-void

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkService;->d(Lcom/samsung/android/app/music/service/milk/MilkService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 321
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public updateLegalInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 384
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/MilkService;->a()I

    move-result p1

    .line 385
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->a(Lcom/samsung/android/app/music/service/milk/MilkService;)Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public updateUserInfo(ILjava/lang/String;Lcom/samsung/android/app/music/model/PushInfo;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    iget-object p3, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/service/milk/MilkService;->a()I

    move-result p3

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService$3;->a:Lcom/samsung/android/app/music/service/milk/MilkService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->a(Lcom/samsung/android/app/music/service/milk/MilkService;)Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(IILjava/lang/String;)V

    return p3
.end method
