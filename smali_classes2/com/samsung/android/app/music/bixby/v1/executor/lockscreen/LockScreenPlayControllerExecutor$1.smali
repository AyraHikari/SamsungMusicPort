.class Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 187
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onServiceConnected"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->registerCallback(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)Z

    .line 189
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 194
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-void
.end method
