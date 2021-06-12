.class Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    .line 158
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onMetadataChanged()"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;Z)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 171
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlaybackStateChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 175
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlaybackStateChanged() - Wait to play... state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "Play"

    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 180
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v0, "PausedSong"

    const-string v2, "Exist"

    const-string v3, "yes"

    .line 181
    invoke-virtual {p1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->c(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v2, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    .line 184
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->d(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)V

    return-void

    .line 188
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->e(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 189
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPlaybackStateChanged() - Metadata is not updated yet."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p1, "PlayNextSong"

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 193
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v0, "NextSong"

    const-string v2, "Exist"

    const-string v3, "yes"

    .line 194
    invoke-virtual {p1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->c(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v2, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    .line 197
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->d(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)V

    goto :goto_0

    :cond_4
    const-string p1, "PlayPreviousSong"

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 199
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v0, "PreviousSong"

    const-string v2, "Exist"

    const-string v3, "yes"

    .line 200
    invoke-virtual {p1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->c(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v2, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    .line 203
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;->d(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
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
