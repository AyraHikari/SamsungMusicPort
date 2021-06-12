.class Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater$1;->a:Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater$1;->a:Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->a(Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getActivePlayerQueue()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BrowsePlayableUiUpdater"

    const-string v1, "mObserver.onMetadataChanged"

    .line 41
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater$1;->a:Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->a(Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater$1;->a:Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->a(Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getActivePlayerQueue()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BrowsePlayableUiUpdater"

    const-string v1, "mObserver.onPlaybackStateChanged"

    .line 52
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater$1;->a:Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->a(I)V

    :cond_0
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
