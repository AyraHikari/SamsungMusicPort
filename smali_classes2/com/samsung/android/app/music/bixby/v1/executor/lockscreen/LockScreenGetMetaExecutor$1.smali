.class Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 151
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onServiceConnected"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 155
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->registerCallback(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)Z

    .line 156
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;Z)Z

    goto :goto_0

    .line 158
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 164
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-void
.end method
