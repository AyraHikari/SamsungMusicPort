.class Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$2;
.super Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;
.source "SourceFile"


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

    .line 200
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->c(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->d(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 207
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;Z)Z

    .line 209
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMetadataChanged mMetaUpdated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->e(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->c(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->d(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 218
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlaybackStateChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    .line 228
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPlaybackStateChanged() - Wait to play..."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 232
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->d(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Play"

    .line 233
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    const-string v1, "PausedSong"

    const-string v2, "Exist"

    const-string v3, "yes"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->e(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 240
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPlaybackStateChanged() - Metadata is not updated yet."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "PlayNextSong"

    .line 243
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    const-string v1, "NextSong"

    const-string v2, "Exist"

    const-string v3, "yes"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "PlayPreviousSong"

    .line 246
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;

    const-string v1, "PreviousSong"

    const-string v2, "Exist"

    const-string v3, "yes"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/lockscreen/LockScreenPlayControllerExecutor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
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
