.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"

.field private static final TAG:Ljava/lang/String; = "SV-List"


# instance fields
.field private final mMessage:Landroid/os/Handler;

.field private final mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

.field private final mThreadId:J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;Landroid/os/Handler;J)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mMessage:Landroid/os/Handler;

    .line 37
    iput-wide p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mThreadId:J

    return-void
.end method

.method private isQueueThread()Z
    .locals 4

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mThreadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyLegalError()V
    .locals 3

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "error_type"

    const/4 v2, 0x2

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    const-string v2, "com.samsung.android.app.music.core.state.queue.ERROR"

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private notifyModeChanged(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    const-string v1, "com.samsung.android.app.music.core.state.queue.MODE_CHANGED"

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private printInfoLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SMUSIC-SV-List"

    .line 165
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method notifyCantPlay()V
    .locals 3

    const-string v0, "There is no content that it can play"

    .line 124
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->printInfoLog(Ljava/lang/String;)V

    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "error_type"

    const/16 v2, 0x8

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    const-string v2, "com.samsung.android.app.music.core.state.queue.ERROR"

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public notifyCurrentMetaAndLegalError(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->isQueueThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mMessage:Landroid/os/Handler;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mMessage:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyLegalError()V

    return-void
.end method

.method notifyDeleteDuplicate(ZIIII)V
    .locals 3

    .line 141
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    const/4 v2, 0x1

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "is_set_list"

    .line 143
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "delete_count_duplicate"

    .line 144
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "delete_count"

    .line 145
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "maximum_count"

    .line 146
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "added_count"

    .line 147
    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    const-string p2, "com.samsung.android.app.music.core.state.queue.NOTIFY"

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public notifyEmptyQueue()V
    .locals 3

    const-string v0, "notifyEmptyQueue"

    .line 81
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->printInfoLog(Ljava/lang/String;)V

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "error_type"

    const/4 v2, 0x3

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    const-string v2, "com.samsung.android.app.music.core.state.queue.ERROR"

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method notifyLimitCountOver(II)V
    .locals 3

    const-string v0, "notifyLimitCountOver"

    .line 131
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->printInfoLog(Ljava/lang/String;)V

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    const/4 v2, 0x2

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "maximum_count"

    .line 134
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "is_added_count_over"

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 135
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    const-string p2, "com.samsung.android.app.music.core.state.queue.NOTIFY"

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method notifyPauseBySkip(Ljava/lang/String;)V
    .locals 2

    .line 116
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->printInfoLog(Ljava/lang/String;)V

    .line 117
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "error_type"

    const/4 v1, 0x7

    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    const-string v1, "com.samsung.android.app.music.core.state.queue.ERROR"

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public notifyQueueComposed(Ljava/util/List;Landroid/os/Bundle;)V
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

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onQueueComposed(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public notifyQueueHistory(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)V
    .locals 3

    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "queue_type"

    .line 157
    iget v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;->queueType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "queue_playlist_id"

    .line 158
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;->playlistId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "queue_playlist_count"

    .line 159
    iget v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;->count:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "queue_playlist_all"

    .line 160
    iget-boolean p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;->isAllCase:Z

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    const-string v1, "com.samsung.android.app.music.core.state.QUEUE_UPDATED"

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public notifyRepeatChanged(Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyModeChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method public notifyShuffleChanged(Landroid/os/Bundle;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyModeChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method notifySortChanged(Landroid/os/Bundle;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    const-string v1, "com.samsung.android.app.music.core.state.queue.MODE_CHANGED"

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public notifyStreamingError(II)V
    .locals 2

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "queue_type"

    .line 89
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "error_type"

    .line 90
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    const-string p2, "com.samsung.android.app.music.core.state.queue.ERROR"

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method notifyUnionChanged(Landroid/os/Bundle;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->notifyModeChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;Z)V

    return-void
.end method

.method public onMetaUpdated(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onMetaUpdated(Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    return-void
.end method

.method public onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onNextMetaChanged(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;)V

    return-void
.end method

.method public onQueueChanged([J)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onQueueChanged([J)V

    return-void
.end method

.method public onQueueComplete()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueNotifier;->mQueueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;->onQueueComplete()V

    return-void
.end method
