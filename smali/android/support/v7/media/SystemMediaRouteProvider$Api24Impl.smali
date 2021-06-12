.class Landroid/support/v7/media/SystemMediaRouteProvider$Api24Impl;
.super Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr2Impl;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/SystemMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api24Impl"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;)V
    .locals 0

    .line 871
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr2Impl;-><init>(Landroid/content/Context;Landroid/support/v7/media/SystemMediaRouteProvider$SyncCallback;)V

    return-void
.end method


# virtual methods
.method protected onBuildSystemRouteDescriptor(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;Landroid/support/v7/media/MediaRouteDescriptor$Builder;)V
    .locals 0

    .line 877
    invoke-super {p0, p1, p2}, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanMr2Impl;->onBuildSystemRouteDescriptor(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;Landroid/support/v7/media/MediaRouteDescriptor$Builder;)V

    .line 879
    iget-object p1, p1, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteRecord;->mRouteObj:Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v7/media/MediaRouterApi24$RouteInfo;->getDeviceType(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setDeviceType(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    return-void
.end method
