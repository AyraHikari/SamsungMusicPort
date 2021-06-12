.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
.end method

.method public abstract onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
.end method

.method public abstract onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
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
