.class Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder;->bindRouteView(Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder;

.field final synthetic val$route:Landroid/support/v7/media/MediaRouter$RouteInfo;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 484
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder$1;->this$2:Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder;

    iput-object p2, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder$1;->val$route:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 487
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteDevicePickerDialog$RecyclerAdapter$RouteViewHolder$1;->val$route:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->select()V

    return-void
.end method
