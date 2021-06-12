.class Landroid/support/v7/app/MediaRouteControllerDialog$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;->animateGroupListItems(Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

.field final synthetic val$previousRouteBitmapMap:Ljava/util/Map;

.field final synthetic val$previousRouteBoundMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 787
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$8;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iput-object p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog$8;->val$previousRouteBoundMap:Ljava/util/Map;

    iput-object p3, p0, Landroid/support/v7/app/MediaRouteControllerDialog$8;->val$previousRouteBitmapMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 790
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$8;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0}, Landroid/support/v7/app/OverlayListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 791
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$8;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$8;->val$previousRouteBoundMap:Ljava/util/Map;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog$8;->val$previousRouteBitmapMap:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->animateGroupListItemsInternal(Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method
