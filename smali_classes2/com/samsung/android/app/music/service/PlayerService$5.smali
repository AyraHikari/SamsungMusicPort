.class Lcom/samsung/android/app/music/service/PlayerService$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$OnMediaRouteResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/PlayerService;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/PlayerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0

    .line 1051
    iput-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/os/Bundle;
    .locals 3

    .line 1087
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1088
    sget-object v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    sget-object v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    sget-object v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getDeviceType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1091
    sget-object v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->f:Ljava/lang/String;

    .line 1092
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getIconUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1091
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1070
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 1071
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 1072
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 1073
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/PlayerService;->s(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    .line 1074
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SELECTED_MEDIA_ROUTE_INFO"

    const/4 v2, 0x0

    .line 1075
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1076
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->a:Lcom/samsung/android/app/music/service/PlayerService;

    const-string v2, "SELECTED_MEDIA_ROUTE_INFO"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/music/service/PlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 1081
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MEDIA_ROUTE_COUNT"

    .line 1082
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1083
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->a:Lcom/samsung/android/app/music/service/PlayerService;

    const-string v1, "MEDIA_ROUTE_COUNT"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/app/music/service/PlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 4

    .line 1054
    new-instance v0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->a:Lcom/samsung/android/app/music/service/PlayerService;

    .line 1055
    invoke-static {v1}, Lcom/samsung/android/app/music/service/PlayerService;->o(Lcom/samsung/android/app/music/service/PlayerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/PlayerService;->p(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;-><init>(Landroid/content/Context;Landroid/support/v7/media/MediaRouter$RouteInfo;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V

    .line 1057
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/PlayerService;->q(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/service/PlayerService$DefaultMediaChangeObserver;->a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)V

    .line 1058
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/PlayerService;->r(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestChangeToCastPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;)V

    .line 1059
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/PlayerService;->s(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->a:Lcom/samsung/android/app/music/service/PlayerService;

    .line 1060
    invoke-static {v2}, Lcom/samsung/android/app/music/service/PlayerService;->k(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c()Landroid/media/VolumeProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    .line 1061
    invoke-virtual {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->queueChanged()V

    .line 1062
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SELECTED_MEDIA_ROUTE_INFO"

    .line 1064
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/PlayerService$5;->b(Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/os/Bundle;

    move-result-object p1

    .line 1063
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1065
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->a:Lcom/samsung/android/app/music/service/PlayerService;

    const-string v1, "SELECTED_MEDIA_ROUTE_INFO"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/app/music/service/PlayerService;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
