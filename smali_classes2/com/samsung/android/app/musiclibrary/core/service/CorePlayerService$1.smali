.class Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.samsung.android.app.music.core.state.queue.ERROR"

    .line 255
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$302(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Z)Z

    if-eqz p2, :cond_2

    const-string v0, "error_type"

    .line 258
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 260
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->seek(J)J

    .line 261
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pause()V

    return-void

    :cond_0
    const-string v0, "com.samsung.android.app.music.core.state.queue.CURRENT_QUEUE_TYPE"

    .line 267
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->putAll(Landroid/os/Bundle;)V

    .line 274
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V
    .locals 5
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 182
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v2, "extra.list_position"

    .line 185
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueuePosition()J

    move-result-wide v3

    long-to-int v3, v3

    .line 184
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->putInt(Ljava/lang/String;I)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v2, "extra.list_length"

    .line 187
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueSize()J

    move-result-wide v3

    long-to-int v3, v3

    .line 186
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v2, "extra.list_position"

    .line 190
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueuePosition()J

    move-result-wide v3

    long-to-int v3, v3

    .line 189
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->putInt(Ljava/lang/String;I)V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v2, "extra.list_length"

    .line 192
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueSize()J

    move-result-wide v3

    long-to-int v3, v3

    .line 191
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->putInt(Ljava/lang/String;I)V

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V

    .line 195
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$302(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Z)Z

    return-void
.end method

.method public onMetaUpdated(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method public onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V
    .locals 3

    .line 205
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "has_next_song"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 206
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mServiceMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    const-string v2, "com.sec.android.app.music.NEXT_SONG_CHANGED"

    .line 208
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->notifyExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 210
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->isSupportNextMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 214
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object p1

    .line 217
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    iget-object p2, p2, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const/16 v0, 0x1f4

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestSetNextDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;I)V

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "SV"

    const-string p2, "onNextMetaChanged but not supported."

    .line 211
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestSetNextDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    :goto_2
    return-void
.end method

.method public onQueueChanged([J)V
    .locals 0

    return-void
.end method

.method public onQueueComplete()V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->seek(J)J

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pause()V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->notifyQueueComplete()V

    .line 247
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->next()Z

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->waitReady()V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    const-string v1, "com.samsung.android.app.music.core.state.QUEUE_COMPLETED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onQueueComposed(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
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

    const-string v0, "com.samsung.android.app.music.core.state.queue.CURRENT_QUEUE_TYPE"

    .line 229
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->putAll(Landroid/os/Bundle;)V

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method
