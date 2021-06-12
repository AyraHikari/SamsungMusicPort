.class Landroid/support/v7/app/MediaRouteControllerDialog$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;->fadeInAddedRoutes()V
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

    .line 917
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$12;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 923
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$12;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->finishAnimation(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
