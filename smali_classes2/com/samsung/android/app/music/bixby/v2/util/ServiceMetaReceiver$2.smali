.class Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$2;
.super Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$2;->a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$2;->a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->c(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$2;->a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->d(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$2;->a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->d(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$2;->a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->c(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$2;->a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->d(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$2;->a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->d(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    :cond_1
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$2;->a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->c(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$2;->a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->d(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$2;->a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->d(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    :cond_1
    return-void
.end method

.method public onQueueChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$2;->a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->c(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "com.samsung.android.app.music.core.state.queue.CURRENT_QUEUE_TYPE"

    .line 204
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 205
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$2;->a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)I

    move-result p2

    if-ne p2, p1, :cond_0

    .line 207
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$2;->a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;I)V

    :cond_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$2;->a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->d(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$2;->a:Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->d(Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    move-result-object v0

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method
