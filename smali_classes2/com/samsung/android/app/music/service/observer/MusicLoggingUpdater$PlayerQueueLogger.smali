.class Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayerQueueLogger"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger;)Landroid/content/Context;
    .locals 0

    .line 509
    iget-object p0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "com.samsung.android.app.music.core.state.QUEUE_UPDATED"

    .line 535
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "queue_playlist_id"

    .line 536
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 537
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "SV-MediaCenter"

    const-string p2, "LogMusic:  PlayerQueueLogger playlistId is null so ignore this."

    .line 538
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "queue_playlist_count"

    .line 541
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const-string p1, "SV-MediaCenter"

    const-string p2, "LogMusic:  PlayerQueueLogger count is 0 so ignore this."

    .line 543
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "queue_playlist_all"

    const/4 v0, 0x0

    .line 546
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string p1, "queue_type"

    .line 547
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 550
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->obtainScheduleExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 551
    new-instance p2, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger$1;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger$1;-><init>(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger;Ljava/lang/String;IZI)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
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
