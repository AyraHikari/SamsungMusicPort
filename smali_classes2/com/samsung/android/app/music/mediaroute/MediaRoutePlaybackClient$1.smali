.class Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$1;
.super Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;
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

    .line 134
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-direct {p0}, Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemStatusChanged(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v7/media/MediaSessionStatus;Ljava/lang/String;Landroid/support/v7/media/MediaItemStatus;)V
    .locals 0

    .line 138
    invoke-virtual {p5}, Landroid/support/v7/media/MediaItemStatus;->getPlaybackState()I

    move-result p1

    const-string p2, "SMUSIC-SV-PlayerCast"

    .line 139
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onItemStatusChanged: state - "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", itemId - "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " this event blocked by event server"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSessionStatusChanged(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v7/media/MediaSessionStatus;)V
    .locals 1

    .line 146
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p3}, Landroid/support/v7/media/MediaSessionStatus;->getSessionState()I

    move-result p1

    const-string p2, "SMUSIC-SV-PlayerCast"

    .line 151
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSessionStatusChanged: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 156
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;->disconnect()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method
