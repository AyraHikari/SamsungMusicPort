.class Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$7;
.super Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->e()V
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

    .line 481
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$7;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-direct {p0}, Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    const-string p2, "SMUSIC-SV-PlayerCast"

    .line 497
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startSession onError: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$7;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Ljava/lang/String;)Ljava/lang/String;

    .line 499
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$7;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 500
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$7;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;->onSessionStateChanged(Z)V

    .line 502
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$7;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Z)Z

    return-void
.end method

.method public onResult(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v7/media/MediaSessionStatus;)V
    .locals 1

    const-string p1, "SMUSIC-SV-PlayerCast"

    .line 484
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startSession onResult: started session - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$7;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Ljava/lang/String;)Ljava/lang/String;

    .line 486
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$7;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 487
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$7;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;->onSessionStateChanged(Z)V

    .line 489
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$7;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->h(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 490
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$7;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Z)Z

    .line 491
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$7;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->queueChanged()V

    :cond_1
    return-void
.end method
