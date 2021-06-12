.class public abstract Landroid/support/v7/media/MediaRouter$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProviderAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 0

    return-void
.end method

.method public onProviderChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 0

    return-void
.end method

.method public onProviderRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 0

    return-void
.end method

.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    return-void
.end method

.method public onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    return-void
.end method

.method public onRoutePresentationDisplayChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    return-void
.end method

.method public onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    return-void
.end method

.method public onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    return-void
.end method

.method public onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    return-void
.end method

.method public onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;I)V
    .locals 0

    .line 1799
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/media/MediaRouter$Callback;->onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public onRouteVolumeChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    return-void
.end method
