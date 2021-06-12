.class public abstract Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;,
        Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/Future;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->b:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->c:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->d:Ljava/util/Map;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->e:Z

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;J)J
    .locals 4

    .line 172
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getDuration()J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 p2, 0x2

    .line 175
    div-long p2, v0, p2

    .line 177
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPosition()J

    move-result-wide v0

    sub-long/2addr p2, v0

    long-to-float p2, p2

    .line 178
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlaySpeed()F

    move-result p1

    div-float/2addr p2, p1

    float-to-long p1, p2

    return-wide p1
.end method

.method private a()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;

    .line 145
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;->b()V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private a(JLcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;)V
    .locals 3

    .line 163
    invoke-virtual {p3}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SMUSIC-SV-MediaCenter"

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayerTimeLogger addTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p3, p1, p2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p3

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->c:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 223
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 6

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->c()V

    .line 152
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 157
    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;J)J

    move-result-wide v3

    .line 158
    iget-object v5, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->b:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;

    invoke-direct {p0, v3, v4, v1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->a(JLcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 242
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
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

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 236
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->e:Z

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->c()V

    return-void
.end method

.method private b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 229
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    .line 188
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method protected final a(JLcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;-><init>(Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$1;)V

    .line 83
    invoke-virtual {v0, p3}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;->a(Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;)V

    .line 84
    iget-object p3, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->b:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0, p3}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$TimeListenerContainer;->a(Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;)V

    :goto_0
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p2, "com.samsung.android.app.music.core.state.QUEUE_COMPLETED"

    .line 131
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->c()V

    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->a()V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 95
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->d:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->a(JLcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 98
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->c()V

    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->e:Z

    return-void

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->b()V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 109
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 110
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->e:Z

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->c()V

    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->c()V

    :goto_0
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

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->a(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public release()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->c()V

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->a()V

    return-void
.end method
