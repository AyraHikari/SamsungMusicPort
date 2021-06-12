.class Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultMediaChangeObserver"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/music/service/PlayerService;

.field private b:Z

.field private c:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 1

    .line 1554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1550
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->b:Z

    .line 1555
    iput-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->a:Lcom/samsung/android/app/music/service/PlayerService;

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    .line 1639
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->c:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    if-nez v0, :cond_0

    return-void

    .line 1643
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/PlayerService;->u(Lcom/samsung/android/app/music/service/PlayerService;)I

    move-result v0

    const-string v1, "com.samsung.android.app.music.core.state.queue.CURRENT_QUEUE_TYPE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    .line 1646
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra.list_mode_type"

    .line 1647
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "extra.repeat_state"

    .line 1650
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1651
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->c:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->repeat(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const-string v0, "extra.shuffle_state"

    .line 1654
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1655
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->c:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->shuffle(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1661
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->a:Lcom/samsung/android/app/music/service/PlayerService;

    .line 1662
    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkDormancyNotificationUtils;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)V
    .locals 0

    .line 1635
    iput-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->c:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.samsung.android.app.music.core.state.queue.ERROR"

    .line 1601
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "queue_type"

    .line 1606
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 1607
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/PlayerService;->u(Lcom/samsung/android/app/music/service/PlayerService;)I

    move-result v0

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    const-string p1, "error_type"

    .line 1610
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x4

    const/16 v0, -0xd

    const/16 v1, -0x2bc

    if-ne p1, p2, :cond_2

    .line 1613
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/music/service/PlayerService;II)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x5

    if-ne p1, p2, :cond_3

    .line 1616
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->a:Lcom/samsung/android/app/music/service/PlayerService;

    const/16 p2, -0xc

    invoke-static {p1, v1, p2}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/music/service/PlayerService;II)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x6

    if-ne p1, p2, :cond_7

    .line 1619
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/music/service/PlayerService;II)V

    goto :goto_0

    :cond_4
    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_CHANGED"

    .line 1623
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1624
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->a(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 1625
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1626
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->c:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    if-nez p1, :cond_6

    return-void

    .line 1629
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->c:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 1630
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    .line 1560
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->c:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    if-nez v0, :cond_0

    return-void

    .line 1563
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1564
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->c:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->queueChanged()V

    :cond_1
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 4

    .line 1570
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    .line 1571
    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->b:Z

    if-eq v1, v0, :cond_0

    .line 1572
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->a(Z)V

    .line 1574
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->b:Z

    .line 1582
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getContent()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "result_type"

    .line 1584
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_1

    .line 1585
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/PlayerService;->t(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;

    move-result-object v1

    .line 1586
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getContentTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/app/music/service/observer/MilkUserInfoManager;->a(ZJ)V

    :cond_1
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

    .line 1593
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->c:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    if-nez p1, :cond_0

    return-void

    .line 1596
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->c:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->queueChanged()V

    return-void
.end method
