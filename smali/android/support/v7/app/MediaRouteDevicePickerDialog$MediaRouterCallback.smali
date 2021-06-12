.class final Landroid/support/v7/app/MediaRouteDevicePickerDialog$MediaRouterCallback;
.super Landroid/support/v7/media/MediaRouter$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteDevicePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteDevicePickerDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteDevicePickerDialog;)V
    .locals 0

    .line 255
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteDevicePickerDialog;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 260
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteDevicePickerDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteDevicePickerDialog;->refreshRoutes()V

    return-void
.end method

.method public onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 270
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteDevicePickerDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteDevicePickerDialog;->refreshRoutes()V

    return-void
.end method

.method public onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 265
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteDevicePickerDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteDevicePickerDialog;->refreshRoutes()V

    return-void
.end method

.method public onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 275
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteDevicePickerDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteDevicePickerDialog;->dismiss()V

    return-void
.end method
