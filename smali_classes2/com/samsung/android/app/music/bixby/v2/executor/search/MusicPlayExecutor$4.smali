.class Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

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
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->g(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MusicPlay"

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlaybackStateChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->h(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->h(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    const/4 p1, 0x6

    if-eq v0, p1, :cond_3

    const-string p1, "MusicPlay"

    const-string v0, "onPlaybackStateChanged() - Wait to play..."

    .line 255
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 258
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->h(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 259
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->h(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 261
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    const-string v0, "Music_18_7"

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor$4;->a:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->i(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicPlayExecutor;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

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
