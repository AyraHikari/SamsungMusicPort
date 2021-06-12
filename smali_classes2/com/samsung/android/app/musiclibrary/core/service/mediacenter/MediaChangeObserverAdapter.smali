.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
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

    return-void
.end method
