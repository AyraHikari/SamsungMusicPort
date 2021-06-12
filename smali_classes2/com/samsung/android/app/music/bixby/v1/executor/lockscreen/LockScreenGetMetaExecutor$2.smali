.class Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor$2;
.super Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;
.source "SourceFile"


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

    .line 170
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onMetadataChanged"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->c(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPlaybackStateChanged"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;->c(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenGetMetaExecutor;)V

    return-void
.end method

.method public onQueueChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
