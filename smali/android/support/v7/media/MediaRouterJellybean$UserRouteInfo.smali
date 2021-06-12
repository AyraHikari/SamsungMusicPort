.class public final Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserRouteInfo"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setIconDrawable(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 232
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .line 224
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setPlaybackStream(Ljava/lang/Object;I)V
    .locals 0

    .line 240
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackStream(I)V

    return-void
.end method

.method public static setPlaybackType(Ljava/lang/Object;I)V
    .locals 0

    .line 236
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setPlaybackType(I)V

    return-void
.end method

.method public static setRemoteControlClient(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 261
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    check-cast p1, Landroid/media/RemoteControlClient;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setRemoteControlClient(Landroid/media/RemoteControlClient;)V

    return-void
.end method

.method public static setStatus(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .line 228
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setStatus(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setVolume(Ljava/lang/Object;I)V
    .locals 0

    .line 244
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolume(I)V

    return-void
.end method

.method public static setVolumeCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 256
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    check-cast p1, Landroid/media/MediaRouter$VolumeCallback;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeCallback(Landroid/media/MediaRouter$VolumeCallback;)V

    return-void
.end method

.method public static setVolumeHandling(Ljava/lang/Object;I)V
    .locals 0

    .line 252
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeHandling(I)V

    return-void
.end method

.method public static setVolumeMax(Ljava/lang/Object;I)V
    .locals 0

    .line 248
    check-cast p0, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter$UserRouteInfo;->setVolumeMax(I)V

    return-void
.end method
