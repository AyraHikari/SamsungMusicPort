.class Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$5;
.super Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b(Landroid/os/Message;)V
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

    .line 416
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$5;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-direct {p0}, Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    const-string p3, "SMUSIC-SV-PlayerCast"

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$5;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 427
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$5;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;->onError(I)V

    :cond_0
    return-void
.end method

.method public onResult(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v7/media/MediaSessionStatus;Ljava/lang/String;Landroid/support/v7/media/MediaItemStatus;)V
    .locals 0

    const-string p1, "SMUSIC-SV-PlayerCast"

    .line 420
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "play onResult: itemId-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
