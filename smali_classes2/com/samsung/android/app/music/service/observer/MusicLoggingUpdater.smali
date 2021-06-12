.class public final Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;,
        Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger;,
        Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$FireBasePlaybackStateLogger;,
        Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;,
        Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;

.field private final b:Landroid/content/Context;

.field private final c:Z

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Z

.field private h:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private i:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

.field private j:Z

.field private k:I

.field private l:Z


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;-><init>(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->a:Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;

    .line 82
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->d:Ljava/util/List;

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->e:I

    .line 86
    iput v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->f:I

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->g:Z

    .line 94
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->j:Z

    .line 96
    iput v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->k:I

    .line 98
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->l:Z

    .line 101
    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;->a(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->b:Landroid/content/Context;

    .line 102
    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;->b(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->c:Z

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->a()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$1;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;-><init>(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$Builder;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->d:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$FireBasePlaybackStateLogger;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$FireBasePlaybackStateLogger;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->d:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$PlayerQueueLogger;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p2, "MPSB"

    const-string v0, "On"

    .line 237
    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p2, "MPSB"

    const-string v0, "Off"

    .line 233
    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;ZJ)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p2, "UHQA"

    goto :goto_0

    :cond_0
    const-string p2, "NONE_UHQA"

    .line 271
    :goto_0
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string p4, "PLUI"

    .line 272
    invoke-static {p1, p4, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 207
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 213
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b()V
    .locals 6

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->h:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->i:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    if-nez v0, :cond_0

    goto :goto_1

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->h:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSoundQuality()J

    move-result-wide v0

    .line 222
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->d(J)Z

    move-result v0

    .line 223
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->i:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getDuration()J

    move-result-wide v1

    .line 225
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->a:Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->b()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, v3

    .line 227
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->b:Landroid/content/Context;

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->a(Landroid/content/Context;ZJ)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private b(Landroid/content/Context;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p2, "MPRB"

    const-string v0, "Repeat All"

    .line 252
    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p2, "MPRB"

    const-string v0, "Repeat 1"

    .line 256
    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p2, "MPRB"

    const-string v0, "Repeat Off"

    .line 248
    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_CHANGED"

    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    .line 166
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "extra.repeat_state"

    .line 170
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 171
    iget v2, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->e:I

    if-eq v1, v2, :cond_2

    .line 172
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->b:Landroid/content/Context;

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->b(Landroid/content/Context;I)V

    .line 173
    iput v1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->e:I

    :cond_2
    const-string v1, "extra.shuffle_state"

    .line 175
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 176
    iget v1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->f:I

    if-eq v0, v1, :cond_8

    .line 177
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->b:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->a(Landroid/content/Context;I)V

    .line 178
    iput v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->f:I

    goto :goto_1

    :cond_3
    const-string v0, "com.samsung.android.app.music.core.state.QUEUE_COMPLETED"

    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->b()V

    goto :goto_1

    :cond_4
    const-string v0, "com.samsung.android.app.music.core.state.SETTING_CHANGED"

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "smart_volume"

    .line 183
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->j:Z

    goto :goto_1

    :cond_5
    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 185
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->k:I

    goto :goto_1

    .line 186
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->c:Z

    if-eqz v0, :cond_8

    const-string v0, "com.samsung.android.app.music.core.state.COMPLETE_PLAYING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 188
    iget v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const-string v0, "9015"

    goto :goto_0

    :cond_7
    const-string v0, "4308"

    .line 193
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->i:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .line 194
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;J)V

    .line 196
    :cond_8
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->l:Z

    .line 116
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->b()V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->a:Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->d()V

    .line 119
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->h:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->h:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    const-string v1, "android.media.metadata.MEDIA_ID"

    .line 121
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->convertAudioId(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrivate()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->b:Landroid/content/Context;

    const-string v0, "PVON"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->b:Landroid/content/Context;

    const-string v0, "SVST"

    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->j:Z

    if-eqz v1, :cond_2

    const-string v1, "On"

    goto :goto_0

    :cond_2
    const-string v1, "Off"

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3

    .line 136
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->i:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .line 137
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->a:Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->a()V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->a:Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->a(J)V

    .line 140
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->l:Z

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->b:Landroid/content/Context;

    const-string v1, "metachanged"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/analytics/ReportDeviceAccess;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->l:Z

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->a:Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->c()V

    .line 147
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
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

    .line 154
    iget-boolean p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->g:Z

    if-nez p1, :cond_0

    .line 155
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$MusicStatusLogger;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 156
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->g:Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->b()V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
