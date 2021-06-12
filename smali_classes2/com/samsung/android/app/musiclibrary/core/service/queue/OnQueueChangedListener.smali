.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onMetaUpdated(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V
.end method

.method public abstract onQueueChanged([J)V
.end method

.method public abstract onQueueComplete()V
.end method

.method public abstract onQueueComposed(Ljava/util/List;Landroid/os/Bundle;)V
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
