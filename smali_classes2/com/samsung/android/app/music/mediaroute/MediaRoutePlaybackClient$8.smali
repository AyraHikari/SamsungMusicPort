.class Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->f()Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Action;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerCast"

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAction() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Action;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "repeat"

    .line 529
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    const-string v1, "repeat"

    .line 531
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Action;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 530
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "shuffle"

    .line 532
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    const-string v1, "shuffle"

    .line 534
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Action;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 533
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNext()V
    .locals 2

    const-string v0, "SMUSIC-SV-PlayerCast"

    const-string v1, "onNext"

    .line 595
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->i(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->next()Z

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "SMUSIC-SV-PlayerCast"

    const-string v1, "onPause"

    .line 589
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->i(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->pause()V

    return-void
.end method

.method public onPlay()V
    .locals 2

    const-string v0, "SMUSIC-SV-PlayerCast"

    const-string v1, "onPlay"

    .line 583
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->i(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->play()V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerCast"

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemStatusChanged: state - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->getId()Ljava/lang/String;

    move-result-object v0

    .line 567
    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->j(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;)Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;

    .line 571
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->k(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 572
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->l(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Z)Z

    .line 575
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;->onPrepared()V

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onPlayingComplete(Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Item;)V
    .locals 3

    .line 607
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Item;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SMUSIC-SV-PlayerCast"

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayingComplete - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->j(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->k(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 613
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;->onCompletion(Z)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onPrev()V
    .locals 2

    const-string v0, "SMUSIC-SV-PlayerCast"

    const-string v1, "onPrev"

    .line 601
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->i(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->prev(Z)Z

    return-void
.end method

.method public onRelease()V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerCast"

    const-string v1, "onRelease"

    .line 557
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->i(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v0

    const-string v1, ""

    const/16 v2, 0xa

    .line 559
    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->onCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method public onSeek(Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerCast"

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->getId()Ljava/lang/String;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->j(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->i(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->getPosition()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->seek(J)J

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerCast"

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSkipToQueueItem() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$8;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->i(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    const/4 v1, 0x1

    .line 542
    invoke-interface {v0, p1, p2, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->openQueueId(JIZ)V

    return-void
.end method
