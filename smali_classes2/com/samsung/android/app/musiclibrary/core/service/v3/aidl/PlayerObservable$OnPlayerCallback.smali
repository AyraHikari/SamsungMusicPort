.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPlayerCallback"
.end annotation


# virtual methods
.method public abstract onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V
.end method

.method public abstract onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V
.end method

.method public abstract onQueueChanged(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V
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

.method public abstract onQueueOptionChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V
.end method
