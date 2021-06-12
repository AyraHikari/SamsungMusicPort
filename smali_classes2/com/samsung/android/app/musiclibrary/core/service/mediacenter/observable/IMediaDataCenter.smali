.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract activate()V
.end method

.method public abstract deactivate()V
.end method

.method public abstract getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
.end method

.method public abstract getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
.end method

.method public abstract getMusicQueue()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
.end method

.method public abstract isActivated()Z
.end method

.method public abstract setMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
.end method

.method public abstract setMusicExtras(Landroid/os/Bundle;)V
.end method

.method public abstract setMusicExtras(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)V
.end method

.method public abstract setMusicQueue(Ljava/util/List;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
.end method
