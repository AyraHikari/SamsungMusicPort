.class public final Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;
.super Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;,
        Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlaybackLoggingEvent;,
        Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;

.field private d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private e:Landroid/os/Bundle;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Lcom/samsung/android/app/music/model/UserInfo;

.field private j:Z

.field private k:J

.field private l:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Context;)V
    .locals 1

    .line 112
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 75
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->b:Ljava/util/Set;

    .line 77
    new-instance p1, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;-><init>(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->c:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->g:Z

    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->l:Z

    .line 113
    iput-object p2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a:Landroid/content/Context;

    .line 114
    invoke-static {p2}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    .line 115
    invoke-static {p2}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->i:Lcom/samsung/android/app/music/model/UserInfo;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object p0
.end method

.method private a(IZ)Ljava/lang/String;
    .locals 1

    const v0, 0x80001

    if-ne p1, v0, :cond_0

    const-string p1, "DRM"

    goto :goto_0

    .line 364
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Local"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "Radio"

    goto :goto_0

    :cond_2
    const-string p1, "MOD"

    :goto_0
    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;IZ)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 375
    new-instance v0, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->i:Lcom/samsung/android/app/music/model/UserInfo;

    .line 376
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;->a(Z)Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 380
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSourceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;

    .line 385
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->i:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;->b(Z)Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;

    .line 386
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;

    .line 387
    invoke-virtual {v0}, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;->a()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x80001
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;I)Ljava/util/Map;
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(I)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 5

    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->e:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->e:Landroid/os/Bundle;

    const-string v1, "settlement_ext"

    .line 287
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 289
    invoke-static {v0}, Lcom/samsung/android/app/music/model/Track;->getSettleThreshold(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 290
    iget-boolean v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->h:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-string v2, "MilkPlayerTimeLogger"

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onExtrasChanged >> threshold time - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 292
    iput-boolean v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->h:Z

    .line 293
    new-instance v2, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;-><init>(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;Landroid/content/Context;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(JLcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistory;)V
    .locals 1

    .line 167
    new-instance v0, Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;-><init>()V

    .line 168
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;->addEventHistoryList(Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistory;)V

    .line 169
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$1;-><init>(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)V

    .line 170
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 8
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueuePosition()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueuePosition()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    goto :goto_2

    .line 154
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->j:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->c:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 155
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 156
    new-instance p1, Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistory;

    .line 157
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSourceId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->c:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;

    iget-object v2, v0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->c:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;

    .line 158
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->b()J

    move-result-wide v3

    long-to-int v3, v3

    .line 159
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->c()Z

    move-result v0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v0, :cond_2

    const/4 v6, 0x2

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    .line 160
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    .line 161
    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getChannelId()Ljava/lang/String;

    move-result-object v7

    move-object v0, p1

    move v4, v6

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistory;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 156
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistory;)V

    const-string p1, "SV-MediaCenter"

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "builder setPlaylistId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getChannelId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 8

    .line 257
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->c(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 260
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 261
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->c:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPosition()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlaySpeed()F

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->a(JFJ)V

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->c:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->a(J)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Z)V
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 300
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez p1, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-wide/32 v1, 0xea60

    .line 305
    new-instance v3, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlaybackLoggingEvent;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlaybackLoggingEvent;-><init>(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(JLcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;)V

    .line 311
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isOnline()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Landroid/os/Bundle;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->e:Landroid/os/Bundle;

    return-object p0
.end method

.method private b(IZ)Ljava/lang/String;
    .locals 1

    const v0, 0x80001

    if-ne p1, v0, :cond_0

    const-string p1, "play_event_DRM"

    return-object p1

    .line 512
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "play_event_LOCAL"

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "play_event_RADIO"

    return-object p1

    :cond_2
    const-string p1, "play_event_MOD"

    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;IZ)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->b(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 7

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->e:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->i:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 320
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;-><init>()V

    .line 321
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->e:Landroid/os/Bundle;

    const-string v2, "result_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x32c8

    const/4 v3, 0x0

    const/16 v4, 0x36b0

    if-eq v1, v2, :cond_2

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 331
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->l:Z

    if-nez v2, :cond_3

    .line 333
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;

    .line 335
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->i:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;->a(Z)Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;

    .line 336
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;->c(Z)Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v2, "yyyyMMdd"

    invoke-static {v5, v6, v2}, Lcom/samsung/android/app/music/util/DateTimeUtils;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;

    .line 340
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v5, "494"

    const-string v6, "0032"

    .line 342
    invoke-virtual {v0}, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;->a()Ljava/util/Map;

    move-result-object v0

    .line 341
    invoke-virtual {v2, v5, v6, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 324
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->i:Lcom/samsung/android/app/music/model/UserInfo;

    .line 325
    invoke-virtual {v5}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;->a(Z)Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;

    .line 326
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v5, "493"

    const-string v6, "0031"

    .line 328
    invoke-virtual {v0}, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension$Builder;->a()Ljava/util/Map;

    move-result-object v0

    .line 327
    invoke-virtual {v2, v5, v6, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    :goto_0
    if-ne v1, v4, :cond_4

    const/4 v3, 0x1

    .line 348
    :cond_4
    iput-boolean v3, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->l:Z

    .line 349
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->l:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a(Z)V

    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method private b(Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistory;)V
    .locals 1

    .line 190
    new-instance v0, Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;-><init>()V

    .line 191
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;->addEventHistoryList(Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistory;)V

    .line 192
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi;->b(Landroid/content/Context;Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$2;-><init>(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)V

    .line 193
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 4

    .line 268
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->c(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 272
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Z)V

    return-void

    .line 275
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getContentTimeStamp()J

    move-result-wide v0

    .line 276
    iget-wide v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->k:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_2

    .line 277
    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->k:J

    .line 278
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getContent()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->e:Landroid/os/Bundle;

    .line 279
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a()V

    .line 280
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->c()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Z)V

    .line 281
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->b()V

    :cond_2
    return-void
.end method

.method private static b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 0
    .param p0    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 353
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isSong()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->c:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;

    return-object p0
.end method

.method private c(IZ)Ljava/lang/String;
    .locals 1

    const v0, 0x80001

    if-ne p1, v0, :cond_0

    const-string p1, "play_event_DRM"

    return-object p1

    .line 523
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "play_event_LOCAL"

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "play_event_RADIO"

    return-object p1

    :cond_2
    const-string p1, "play_event_MOD"

    return-object p1
.end method

.method static synthetic c(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;IZ)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->c(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c()Z
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->e:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->e:Landroid/os/Bundle;

    const-string v1, "is_preview_song"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static c(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 2

    .line 357
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Lcom/samsung/android/app/music/provider/CpAttrs;->a(I)I

    move-result p0

    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/music/model/UserInfo;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->i:Lcom/samsung/android/app/music/model/UserInfo;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->i:Lcom/samsung/android/app/music/model/UserInfo;

    return-void
.end method

.method public a(ZZ)V
    .locals 3

    const-string v0, "MilkPlayerTimeLogger"

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNetworkStatus >> isMobilEnabled - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isWifiEnabled - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "WiFi"

    .line 246
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, "Mobile"

    .line 248
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->f:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->i:Lcom/samsung/android/app/music/model/UserInfo;

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "com.samsung.android.app.music.core.state.COMPLETE_PLAYING"

    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 223
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isAdvertisement()Z

    move-result v1

    if-nez v1, :cond_2

    .line 224
    new-instance v1, Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistory;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 225
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSourceId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->c:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;

    iget-object v4, v2, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->c:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;

    .line 226
    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->b()J

    move-result-wide v5

    long-to-int v5, v5

    .line 227
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->c()Z

    move-result v2

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v2, :cond_0

    const/4 v8, 0x2

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 228
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 229
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getChannelId()Ljava/lang/String;

    move-result-object v9

    move-object v2, v1

    move v6, v8

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistory;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 224
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->b(Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistory;)V

    const-string v1, "SV-MediaCenter"

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "builder setPlaylistId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz v0, :cond_3

    .line 233
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-eqz p1, :cond_3

    .line 234
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide p1

    long-to-int p1, p1

    const-string p2, "0029"

    .line 235
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 236
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(I)Ljava/util/Map;

    move-result-object p1

    .line 235
    invoke-static {p2, v1, p1}, Lcom/samsung/android/app/music/analytics/SAPlaybackCustomDimension;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 238
    :cond_3
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->j:Z

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3

    .line 126
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEditedMetadata()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 130
    invoke-static {p1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->g:Z

    .line 132
    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->h:Z

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->b:Ljava/util/Set;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->g:Z

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 139
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->d:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->e:Landroid/os/Bundle;

    .line 141
    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->j:Z

    .line 142
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->c:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->a()V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 214
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 215
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 216
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger;->release()V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    return-void
.end method
