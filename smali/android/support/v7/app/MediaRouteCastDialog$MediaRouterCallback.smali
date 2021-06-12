.class final Landroid/support/v7/app/MediaRouteCastDialog$MediaRouterCallback;
.super Landroid/support/v7/media/MediaRouter$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteCastDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteCastDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteCastDialog;)V
    .locals 0

    .line 774
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 779
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteCastDialog;->refreshRoutes()V

    return-void
.end method

.method public onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 799
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteCastDialog;->refreshRoutes()V

    .line 800
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteCastDialog;->update()V

    return-void
.end method

.method public onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 784
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteCastDialog;->refreshRoutes()V

    return-void
.end method

.method public onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 789
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteCastDialog;->update()V

    return-void
.end method

.method public onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 794
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteCastDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteCastDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteCastDialog;->update()V

    return-void
.end method
