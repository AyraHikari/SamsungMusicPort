.class public final Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$serviceCallbackStub$1;
.super Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$serviceCallbackStub$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SMUSIC-SOM"

    const-string v1, "ScreenOffMusicService onExtrasChanged()"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 119
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 121
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SMUSIC-SOM"

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScreenOffMusicService queueType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$serviceCallbackStub$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$setActiveQueueType$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;I)V

    .line 125
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$serviceCallbackStub$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$setController(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;I)V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$serviceCallbackStub$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$getPlayController$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$serviceCallbackStub$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$getActiveQueueType$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueType()I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string v0, "SMUSIC-SOM"

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ScreenOffMusicService queueType not matched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "SMUSIC-SOM"

    const-string v1, "ScreenOffMusicService onMetadataChanged()"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$serviceCallbackStub$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$getPlayingItemText$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SMUSIC-SOM"

    const-string v1, "ScreenOffMusicService onPlaybackStateChanged()"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$serviceCallbackStub$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$getScreenOffControlObserver$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$serviceCallbackStub$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;->access$getPlayController$p(Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;)Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method public onQueueChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method
