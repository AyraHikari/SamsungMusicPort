.class final Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/observer/PlayerTimeLogger$OnTimeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Settlement"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

.field private final b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;Landroid/content/Context;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;)Landroid/content/Context;
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->b:Landroid/content/Context;

    return-object p0
.end method

.method private b()V
    .locals 5

    .line 417
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-SV-MediaCenter"

    const-string v1, "MilkPlayerTimeLogger run! but something is wrong!. mMusicMetadata is null. This should not happened"

    .line 418
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->b(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "SMUSIC-SV-MediaCenter"

    const-string v1, "MilkPlayerTimeLogger run! but something is wrong!. mExtraContent is null. This should not happened"

    .line 424
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 430
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/util/ConvertSystemTime;->c()Ljava/lang/String;

    move-result-object v0

    .line 431
    new-instance v1, Lcom/samsung/android/app/music/model/AdjustmentEvent;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 432
    invoke-static {v2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "09"

    goto :goto_0

    :cond_2
    const-string v2, "08"

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 434
    invoke-static {v3}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->c(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->b()J

    move-result-wide v3

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/samsung/android/app/music/model/AdjustmentEvent;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 435
    new-instance v0, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 436
    invoke-static {v2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->setId(Ljava/lang/String;)Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 437
    invoke-static {v2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 438
    invoke-static {v2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->setPlaylistId(Ljava/lang/String;)Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 439
    invoke-static {v2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->b(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "settlement_ext"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->setSettlementExt(Ljava/lang/String;)Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 440
    invoke-static {v2}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->c(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$PlayingInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->setStartDate(Ljava/lang/String;)Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->setEvent(Lcom/samsung/android/app/music/model/AdjustmentEvent;)Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;

    move-result-object v0

    const-string v1, "SV-MediaCenter"

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "builder setPlaylistId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->d(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 443
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->d(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/UserInfo;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->setStreamingId(Ljava/lang/String;)Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;

    const-string v1, "SMUSIC-SV-MediaCenter"

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MilkPlayerTimeLoggeradjustment - orderId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->d(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/UserInfo;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_3
    new-instance v1, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement$1;-><init>(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;)V

    .line 486
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->b:Landroid/content/Context;

    new-instance v3, Lcom/samsung/android/app/music/model/playhistory/TrackPlayInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->build()Lcom/samsung/android/app/music/model/playhistory/TrackPlay;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/samsung/android/app/music/model/playhistory/TrackPlayInfo;-><init>(Lcom/samsung/android/app/music/model/playhistory/TrackPlay;)V

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/playhistory/TrackPlayInfo;)Lio/reactivex/Observable;

    move-result-object v0

    .line 487
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 488
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 489
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/SongTypeScheduler;->f()V

    :cond_4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 407
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->b()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " current meta :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    .line 413
    invoke-static {v1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger$Settlement;->a:Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
