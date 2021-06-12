.class Landroid/support/v7/app/MediaRouteControllerDialog$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;->animateGroupListItemsInternal(Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V
    .locals 0

    .line 804
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$9;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3

    .line 807
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$9;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object p1, p1, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {p1}, Landroid/support/v7/app/OverlayListView;->startAnimationAll()V

    .line 808
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$9;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object p1, p1, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$9;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListFadeInAnimation:Ljava/lang/Runnable;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$9;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget v1, v1, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListAnimationDurationMs:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v7/app/OverlayListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
