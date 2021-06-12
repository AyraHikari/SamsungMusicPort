.class Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmRequest(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "play_ready_drm_acquire_type"

    .line 419
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 438
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$1000(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 431
    :pswitch_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "command"

    const-string v1, "successRights"

    .line 432
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    const-string v1, "com.samsung.android.app.music.core.state.DRM_REQUEST"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 423
    :pswitch_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "command"

    const-string v1, "startRights"

    .line 424
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    const-string v1, "com.samsung.android.app.music.core.state.DRM_REQUEST"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onError(IILandroid/os/Bundle;)V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->onPlayerError(IILandroid/os/Bundle;)V

    return-void
.end method

.method public onPlayerStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$900(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method public onPrepared(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 0

    return-void
.end method

.method public onServerDied()V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->play()V

    :cond_0
    return-void
.end method

.method public onTrackEnded(Z)V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->completePlayingInternal(Z)V

    return-void
.end method
