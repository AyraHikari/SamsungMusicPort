.class public final Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$onCreate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/v3/PlayerServiceV3;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$onCreate$1;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$onCreate$1;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->notifyExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$onCreate$1;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->notifyMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/player/IPlaybackNotifier;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$onCreate$1;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->notifyPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
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

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/service/v3/PlayerServiceV3$onCreate$1;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->notifyQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method
