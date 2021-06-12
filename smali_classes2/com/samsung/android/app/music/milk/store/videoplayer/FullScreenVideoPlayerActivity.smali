.class public Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;
.implements Lcom/devbrackets/android/exomedia/listener/OnErrorListener;
.implements Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;
.implements Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;
.implements Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;
.implements Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;
    }
.end annotation


# instance fields
.field private A:Landroid/database/ContentObserver;

.field protected a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

.field private b:Z

.field private c:Z

.field private d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

.field private e:Landroid/media/AudioManager;

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Lcom/samsung/android/app/music/view/NoNetworkViewController;

.field private j:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

.field private k:Ljava/lang/String;

.field private l:J

.field private m:I

.field private n:J

.field private o:I

.field private p:Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;

.field private q:Ljava/lang/String;

.field private r:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

.field private s:Z

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:I

.field private w:I

.field private x:Z

.field private y:Lcom/samsung/android/app/music/model/UserInfo;

.field private final z:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->b:Z

    const/4 v1, -0x1

    .line 134
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->f:I

    .line 136
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->g:Z

    .line 138
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->h:Z

    const-wide/16 v1, 0x0

    .line 148
    iput-wide v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->l:J

    .line 150
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->m:I

    .line 152
    iput-wide v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->n:J

    const/4 v1, 0x0

    .line 156
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->p:Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;

    const/4 v1, 0x1

    .line 164
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->t:Z

    .line 171
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->w:I

    .line 173
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->x:Z

    .line 177
    new-instance v0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$1;-><init>(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->z:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

    .line 239
    new-instance v0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$2;-><init>(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->A:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;I)I
    .locals 0

    .line 87
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->w:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;)Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->p:Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;

    return-object p1
.end method

.method private a(II)V
    .locals 1

    const/4 v0, 0x2

    .line 870
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->w:I

    .line 871
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->b(II)V

    return-void
.end method

.method private a(J)V
    .locals 4

    .line 670
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->h:Z

    if-nez v0, :cond_2

    const-wide/32 v0, 0xea60

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 674
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->h:Z

    const-string v1, "MusicVideo"

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateProgress : adjustment music video : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-static {}, Lcom/samsung/android/app/music/util/ConvertSystemTime;->c()Ljava/lang/String;

    move-result-object v1

    .line 677
    new-instance v2, Lcom/samsung/android/app/music/model/AdjustmentEvent;

    const-string v3, "07"

    invoke-direct {v2, v3, v1, p1, p2}, Lcom/samsung/android/app/music/model/AdjustmentEvent;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 679
    new-instance p1, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;

    invoke-direct {p1}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->p:Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;

    .line 680
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->getVideoId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->setId(Ljava/lang/String;)Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->p:Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;

    .line 681
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->getVideoTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;

    move-result-object p1

    const-string p2, "PLAY-MV"

    .line 683
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->setPlaylistId(Ljava/lang/String;)Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->p:Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;

    .line 684
    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->getSettlementExt()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->setSettlementExt(Ljava/lang/String;)Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->q:Ljava/lang/String;

    .line 685
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->setStartDate(Ljava/lang/String;)Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->setEvent(Lcom/samsung/android/app/music/model/AdjustmentEvent;)Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;

    move-result-object p1

    .line 686
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->y:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 687
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->y:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/model/UserInfo;->getOrderId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->setStreamingId(Ljava/lang/String;)Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;

    .line 690
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/app/music/model/playhistory/TrackPlayInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/playhistory/TrackPlay$Builder;->build()Lcom/samsung/android/app/music/model/playhistory/TrackPlay;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/model/playhistory/TrackPlayInfo;-><init>(Lcom/samsung/android/app/music/model/playhistory/TrackPlay;)V

    invoke-static {p2, v1}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/playhistory/TrackPlayInfo;)Lio/reactivex/Observable;

    move-result-object p1

    .line 691
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$5;-><init>(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 704
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->y:Lcom/samsung/android/app/music/model/UserInfo;

    const-string p2, "0028"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a(Lcom/samsung/android/app/music/model/UserInfo;Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object p1

    const-string p2, "play_event_MV"

    const-string v1, "play_event_MV"

    .line 706
    invoke-virtual {p1, p2, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 0

    .line 532
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->b(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;II)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;Landroid/net/Uri;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/model/UserInfo;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/samsung/android/app/music/model/UserInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 710
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 711
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_1

    const-string v0, "YES"

    goto :goto_1

    :cond_1
    const-string v0, "NO"

    .line 714
    :goto_1
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->h(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const-string v2, "WiFi"

    goto :goto_2

    :cond_2
    const-string v2, "Mobile"

    :goto_2
    if-eqz p1, :cond_3

    .line 720
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isDeviceSignedIn()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "NO"

    goto :goto_3

    :cond_3
    const-string p1, "YES"

    :goto_3
    const-string v3, "Network"

    .line 725
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Subscription"

    .line 727
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SA sign in"

    .line 728
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "MV ID"

    .line 729
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->p:Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "491"

    const-string v2, "MV"

    .line 731
    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    .line 893
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "youtube_url"

    .line 894
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 896
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->finish()V

    .line 897
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 479
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/network/request/play/PlayApis;->a(Landroid/content/Context;Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    .line 480
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$4;-><init>(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 527
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->w:I

    .line 528
    invoke-static {}, Lcom/samsung/android/app/music/util/ConvertSystemTime;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->q:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "MusicVideo"

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "artistName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", songTitle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 541
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    if-eqz p1, :cond_2

    .line 542
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 543
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "%s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v0

    invoke-static {p1, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->k:Ljava/lang/String;

    goto :goto_0

    .line 545
    :cond_1
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%s - %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v0

    aput-object p3, v3, v1

    invoke-static {p1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->k:Ljava/lang/String;

    .line 548
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->p:Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlay;

    return-object p0
.end method

.method private b(II)V
    .locals 3

    const-string v0, "SMUSIC-MusicVideo"

    .line 875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showError. rsp - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", error - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 882
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 883
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ServerErrorType;->toString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 882
    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/milk/MilkToast;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 884
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 878
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0b0260

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/milk/MilkToast;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 879
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private b(Landroid/net/Uri;)V
    .locals 1

    .line 889
    const-class v0, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubeWebActivity;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/samsung/android/app/music/network/NetworkInfo;)Z
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 345
    iget-object v0, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->b:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->d:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->c:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->o()V

    return-void
.end method

.method private c(Lcom/samsung/android/app/music/model/UserInfo;)Z
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->y:Lcom/samsung/android/app/music/model/UserInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->y:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->y:Lcom/samsung/android/app/music/model/UserInfo;

    .line 334
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private d(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 4

    .line 579
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getDuration()J

    move-result-wide v0

    .line 580
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->e(Lcom/samsung/android/app/music/model/UserInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 581
    iput-wide v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->n:J

    goto :goto_1

    :cond_0
    const-wide/32 v2, 0xea60

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 583
    :goto_0
    iput-wide v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->n:J

    .line 585
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    if-eqz p1, :cond_2

    .line 586
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    iget-wide v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->n:J

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setDuration(J)V

    :cond_2
    return-void
.end method

.method private e(Lcom/samsung/android/app/music/model/UserInfo;)Z
    .locals 4

    .line 821
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "MusicVideo"

    const-string v0, "[isFullStreaming] isStreamingUser"

    .line 822
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 824
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->v:I

    if-ne v0, v1, :cond_2

    .line 825
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isAccountSignedIn()Z

    move-result v0

    const-string v1, "MusicVideo"

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isFullStreaming] Spotlight and isAccountSignedIn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isSigned()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->q()Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private j()V
    .locals 3

    .line 350
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->j:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .line 351
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->j:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->j:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 353
    new-instance v0, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$3;-><init>(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)V

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->j:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;-><init>(Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;Lcom/samsung/android/app/music/network/NetworkManager;)V

    .line 370
    invoke-virtual {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a()Lcom/samsung/android/app/music/view/NoNetworkViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->i:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    return-void
.end method

.method private k()V
    .locals 10

    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-nez v0, :cond_0

    const-string v0, "SMUSIC-MusicVideo"

    const-string v1, "refreshVideoControl : Error! EmVideoView is null"

    .line 375
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setControls(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    .line 380
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    const v2, 0x7f0f00a0

    invoke-virtual {v0, v2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setPreviewImage(I)V

    .line 382
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->e()Z

    move-result v0

    .line 383
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setOnUpdateProgressListener(Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;)V

    .line 384
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->removeAllViews()V

    .line 385
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->q()V

    .line 387
    new-instance v1, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    .line 388
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v1, v2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setControls(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    .line 389
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    const v2, 0x7f020560

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f02055f

    .line 390
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 389
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 391
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setOnUpdateProgressListener(Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;)V

    .line 392
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setButtonListener(Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;)V

    .line 393
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setControlButtonListener(Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;)V

    .line 394
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setTitle(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    iget-wide v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->l:J

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setPosition(J)V

    .line 397
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    iget-wide v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->n:J

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setDuration(J)V

    .line 398
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    iget-wide v5, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->l:J

    iget-wide v7, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->n:J

    iget v9, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->m:I

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->a(JJI)V

    .line 399
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->s:Z

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setIsMultiWindowMode(Z)V

    .line 401
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->b(Z)V

    :cond_1
    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->b()V

    goto :goto_0

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->a(J)V

    :goto_0
    return-void
.end method

.method private l()V
    .locals 3

    .line 422
    new-instance v0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    .line 423
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    const v1, 0x7f020560

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f02055f

    .line 424
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 423
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 425
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setOnUpdateProgressListener(Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;)V

    .line 426
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setButtonListener(Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;)V

    .line 427
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setControlButtonListener(Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;)V

    .line 428
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->e(Z)V

    const v0, 0x7f1303bc

    .line 431
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    .line 432
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    const v1, 0x7f0f00a0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setPreviewImage(I)V

    .line 433
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setControls(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    .line 434
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setOnPreparedListener(Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;)V

    .line 435
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setOnCompletionListener(Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;)V

    .line 436
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setOnErrorListener(Lcom/devbrackets/android/exomedia/listener/OnErrorListener;)V

    .line 437
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->b()V

    .line 438
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setHandleAudioFocus(Z)V

    return-void
.end method

.method private m()V
    .locals 2

    const-string v0, "MusicVideo"

    const-string v1, "start : in"

    .line 442
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d()V

    .line 445
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->r:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->r:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 2

    const-string v0, "MusicVideo"

    const-string v1, "restart : in"

    .line 454
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 455
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->t:Z

    .line 456
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->g()Z

    .line 457
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->r:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->r:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;->a(Landroid/app/Activity;)V

    :cond_0
    const/4 v0, 0x3

    .line 460
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->w:I

    return-void
.end method

.method private o()V
    .locals 2

    const-string v0, "MusicVideo"

    const-string v1, "pause : in"

    .line 464
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->e()V

    const/4 v0, 0x0

    .line 466
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->t:Z

    .line 467
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->r:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->r:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->o()V

    const/4 v0, 0x4

    .line 474
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->w:I

    .line 475
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->o()V

    return-void
.end method

.method private q()Z
    .locals 1

    .line 591
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private r()Z
    .locals 5

    const-string v0, "MusicVideo"

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAudioFocus : requesting audio focus. current focus - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->e:Landroid/media/AudioManager;

    const/4 v1, 0x1

    const/4 v2, 0x3

    .line 640
    invoke-virtual {v0, p0, v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-eq v0, v1, :cond_0

    const-string v0, "MusicVideo"

    const-string v1, "getAudioFocus : Requested but not granted audio focus"

    .line 644
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v2, "MusicVideo"

    .line 647
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAudioFocus : Requested and granted audio focus. result - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->onAudioFocusChange(I)V

    return v1
.end method

.method private s()V
    .locals 3

    .line 800
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->x:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->t()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->y:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->e(Lcom/samsung/android/app/music/model/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->c:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 805
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2ee0

    goto :goto_0

    :cond_1
    const/16 v0, 0x2af8

    :goto_0
    const/4 v1, 0x0

    .line 806
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory;->a(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const v1, 0x80002

    .line 807
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/dialog/player/PlayerBottomDialogFragment;->a(Landroid/os/Bundle;I)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 808
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "show_upsell"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private t()Z
    .locals 2

    .line 813
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "show_upsell"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 814
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private u()V
    .locals 2

    .line 862
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x7

    .line 863
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 865
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const-string v0, "MusicVideo"

    const-string v1, "onCompletion : Completion"

    .line 596
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "321"

    const-string v2, "4385"

    iget-wide v3, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->n:J

    .line 598
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 599
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->y:Lcom/samsung/android/app/music/model/UserInfo;

    const-string v1, "0029"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a(Lcom/samsung/android/app/music/model/UserInfo;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->finish()V

    return-void
.end method

.method public a(JJI)V
    .locals 2
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    .line 655
    iput-wide p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->l:J

    .line 656
    iput p5, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->m:I

    .line 658
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->getDuration()J

    move-result-wide p3

    const-wide/16 v0, 0x0

    cmp-long p5, p3, v0

    if-lez p5, :cond_0

    cmp-long p3, p1, p3

    if-ltz p3, :cond_0

    const-string p3, "MusicVideo"

    .line 660
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onUpdateProgress : finish: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->y:Lcom/samsung/android/app/music/model/UserInfo;

    const-string p2, "0028"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a(Lcom/samsung/android/app/music/model/UserInfo;Ljava/lang/String;)V

    .line 662
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->finish()V

    return-void

    .line 666
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a(J)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/model/UserInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 315
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->c(Lcom/samsung/android/app/music/model/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d(Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 318
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->y:Lcom/samsung/android/app/music/model/UserInfo;

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 339
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->b(Lcom/samsung/android/app/music/network/NetworkInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->o()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)Z
    .locals 1

    .line 856
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->p()V

    const/4 p1, 0x1

    const/4 v0, -0x1

    .line 857
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->b(II)V

    return p1
.end method

.method public b()V
    .locals 4

    const-string v0, "MusicVideo"

    const-string v1, "onPrepared : in"

    .line 554
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 559
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->r()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_4

    .line 560
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-eqz v0, :cond_4

    .line 561
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->y:Lcom/samsung/android/app/music/model/UserInfo;

    if-nez v0, :cond_2

    .line 562
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->y:Lcom/samsung/android/app/music/model/UserInfo;

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->y:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d(Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 565
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->s()V

    .line 566
    iget-wide v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 567
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    iget-wide v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->l:J

    invoke-virtual {v0, v1, v2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a(J)V

    .line 569
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->t:Z

    if-eqz v0, :cond_5

    .line 570
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->m()V

    goto :goto_1

    :cond_4
    const-string v0, "SMUSIC-MusicVideo"

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepared : Failed to grant AudioFocus or mVideoView is null - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const-string v0, "MusicVideo"

    const-string v1, "onPrepared : Activity is already isDestroyed or finishing"

    .line 556
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/model/UserInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 323
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->c(Lcom/samsung/android/app/music/model/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d(Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 326
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->y:Lcom/samsung/android/app/music/model/UserInfo;

    return-void
.end method

.method public c()Z
    .locals 5

    .line 737
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->c()Z

    move-result v0

    const-string v1, "MusicVideo"

    .line 738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlayPauseClicked : mVideoView.isPlaying() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mLastAudioFocus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 742
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->r:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    if-eqz v2, :cond_3

    .line 743
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->r:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    invoke-virtual {v2, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;->b(Landroid/app/Activity;)V

    goto :goto_1

    .line 746
    :cond_0
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->w:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    .line 758
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->f:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 759
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->r()Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_2

    .line 762
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->o()V

    .line 763
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->t:Z

    return v3

    .line 767
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->r:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    if-eqz v2, :cond_3

    .line 768
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->r:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    invoke-virtual {v2, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;->a(Landroid/app/Activity;)V

    :cond_3
    :goto_1
    xor-int/lit8 v2, v0, 0x1

    .line 771
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->t:Z

    .line 773
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "321"

    const-string v4, "4382"

    if-eqz v0, :cond_4

    const-string v0, "Play"

    goto :goto_2

    :cond_4
    const-string v0, "Pause"

    .line 774
    :goto_2
    invoke-virtual {v2, v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 751
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->n()V

    return v1

    .line 748
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->u:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a(Ljava/lang/String;)V

    return v1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 5

    const-string v0, "MusicVideo"

    const-string v1, "onCloseButtonClicked : clicked"

    .line 834
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "321"

    const-string v2, "4381"

    iget-wide v3, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->l:J

    .line 836
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 837
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->finish()V

    return-void
.end method

.method public i()V
    .locals 3

    .line 842
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->u()V

    .line 843
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "321"

    const-string v2, "4383"

    .line 844
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 3

    const-string v0, "MusicVideo"

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange : onAudioFocusChange - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->f:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "MusicVideo"

    const-string v0, "onAudioFocusChange : received AUDIOFOCUS_LOSS, pause video"

    .line 616
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 618
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->e()V

    goto :goto_0

    :pswitch_1
    const-string p1, "MusicVideo"

    const-string v1, "onAudioFocusChange : received AUDIOFOCUS_LOSS_TRANSIENT or CAN_DUCK, pause video"

    .line 623
    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 626
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->e()V

    .line 627
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->g:Z

    goto :goto_0

    .line 610
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->g:Z

    if-eqz p1, :cond_1

    .line 611
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->d()V

    const/4 p1, 0x0

    .line 612
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->g:Z

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 849
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    if-eqz p1, :cond_0

    .line 850
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->p()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 414
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 415
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->o:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 416
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->o:I

    .line 417
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->k()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 201
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    .line 203
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->A:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 202
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const v0, 0x7f040137

    .line 205
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->setContentView(I)V

    .line 206
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->l()V

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->o:I

    const-string v0, "audio"

    .line 209
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->e:Landroid/media/AudioManager;

    .line 210
    new-instance v0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;-><init>(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->r:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    .line 211
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->j()V

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_id"

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->u:Ljava/lang/String;

    .line 216
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->u:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string p1, "SMUSIC-MusicVideo"

    const-string v0, "onCreate : Music Video Id must not be null!"

    .line 217
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->finish()V

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "current_position"

    .line 222
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->l:J

    const-string v2, "current_duration"

    .line 223
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->n:J

    const-string v2, "is_playing_state"

    .line 224
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->t:Z

    const-string v2, "is_show_upsell_popup"

    .line 225
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->x:Z

    .line 226
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    if-eqz p1, :cond_1

    .line 227
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    iget-wide v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->n:J

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setDuration(J)V

    .line 228
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    iget-wide v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->l:J

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setPosition(J)V

    :cond_1
    const-string p1, "extra_content_type"

    .line 231
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->v:I

    const-string p1, "MusicVideo"

    const-string v0, "onCreate : requestToPlayVideo"

    .line 233
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->u:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "321"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 252
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onDestroy()V

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->j:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->a()V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setOnCompletionListener(Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;)V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setOnErrorListener(Lcom/devbrackets/android/exomedia/listener/OnErrorListener;)V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->setOnPreparedListener(Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setButtonListener(Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;)V

    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setControlButtonListener(Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setOnUpdateProgressListener(Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;)V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setVideoView(Lcom/devbrackets/android/exomedia/ui/widget/VideoView;)V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->d:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->b(Z)V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->e:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, -0x1

    .line 273
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->f:I

    .line 275
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->A:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->r:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->r:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;->b(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 188
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-eqz v0, :cond_0

    const-string v0, "current_position"

    .line 190
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getCurrentPosition()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "current_duration"

    .line 191
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->getDuration()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "is_playing_state"

    .line 192
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->t:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "is_show_upsell_popup"

    const/4 v1, 0x1

    .line 194
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 284
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onStart()V

    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->c:Z

    .line 286
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->b:Z

    if-eqz v1, :cond_2

    .line 288
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->f:I

    if-eq v1, v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->r()Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    .line 292
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->m()V

    :cond_1
    const/4 v0, 0x0

    .line 294
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->b:Z

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->i:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->onStartCalled()V

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->z:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->addOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 302
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onStop()V

    const/4 v0, 0x0

    .line 303
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->c:Z

    .line 304
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 305
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->b:Z

    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->a:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->e()V

    const/4 v0, -0x1

    .line 307
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->f:I

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->z:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->removeOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V

    .line 310
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->i:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->onStopCalled()V

    return-void
.end method
