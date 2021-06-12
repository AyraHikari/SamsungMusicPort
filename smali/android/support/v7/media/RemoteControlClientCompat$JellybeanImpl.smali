.class Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;
.super Landroid/support/v7/media/RemoteControlClientCompat;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/RemoteControlClientCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JellybeanImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;
    }
.end annotation


# instance fields
.field private mRegistered:Z

.field private final mRouterObj:Ljava/lang/Object;

.field private final mUserRouteCategoryObj:Ljava/lang/Object;

.field private final mUserRouteObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/RemoteControlClientCompat;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 133
    invoke-static {p1}, Landroid/support/v7/media/MediaRouterJellybean;->getMediaRouter(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    .line 134
    iget-object p1, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    const-string p2, ""

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/support/v7/media/MediaRouterJellybean;->createRouteCategory(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mUserRouteCategoryObj:Ljava/lang/Object;

    .line 136
    iget-object p1, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mRouterObj:Ljava/lang/Object;

    iget-object p2, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mUserRouteCategoryObj:Ljava/lang/Object;

    invoke-static {p1, p2}, Landroid/support/v7/media/MediaRouterJellybean;->createUserRoute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mUserRouteObj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public setPlaybackInfo(Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;)V
    .locals 2

    .line 142
    iget-object v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mUserRouteObj:Ljava/lang/Object;

    iget v1, p1, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volume:I

    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setVolume(Ljava/lang/Object;I)V

    .line 144
    iget-object v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mUserRouteObj:Ljava/lang/Object;

    iget v1, p1, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volumeMax:I

    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setVolumeMax(Ljava/lang/Object;I)V

    .line 146
    iget-object v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mUserRouteObj:Ljava/lang/Object;

    iget v1, p1, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->volumeHandling:I

    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setVolumeHandling(Ljava/lang/Object;I)V

    .line 148
    iget-object v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mUserRouteObj:Ljava/lang/Object;

    iget v1, p1, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->playbackStream:I

    invoke-static {v0, v1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setPlaybackStream(Ljava/lang/Object;I)V

    .line 150
    iget-object v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mUserRouteObj:Ljava/lang/Object;

    iget p1, p1, Landroid/support/v7/media/RemoteControlClientCompat$PlaybackInfo;->playbackType:I

    invoke-static {v0, p1}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setPlaybackType(Ljava/lang/Object;I)V

    .line 153
    iget-boolean p1, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mRegistered:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 154
    iput-boolean p1, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mRegistered:Z

    .line 155
    iget-object p1, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mUserRouteObj:Ljava/lang/Object;

    new-instance v0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;

    invoke-direct {v0, p0}, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl$VolumeCallbackWrapper;-><init>(Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;)V

    .line 156
    invoke-static {v0}, Landroid/support/v7/media/MediaRouterJellybean;->createVolumeCallback(Landroid/support/v7/media/MediaRouterJellybean$VolumeCallback;)Ljava/lang/Object;

    move-result-object v0

    .line 155
    invoke-static {p1, v0}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setVolumeCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    iget-object p1, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mUserRouteObj:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v7/media/RemoteControlClientCompat$JellybeanImpl;->mRcc:Ljava/lang/Object;

    invoke-static {p1, v0}, Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;->setRemoteControlClient(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
