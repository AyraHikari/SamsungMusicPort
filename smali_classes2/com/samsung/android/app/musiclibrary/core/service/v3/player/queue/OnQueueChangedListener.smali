.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onNextPlayingItemChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
.end method

.method public abstract onPlayingItemChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;Z)V
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onPlayingItemUpdated(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onQueueChanged([J)V
.end method

.method public abstract onQueueComplete()V
.end method

.method public abstract onQueueComposed(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onQueueError(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/QueueError;)V
.end method

.method public abstract onQueueOptionChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V
.end method
