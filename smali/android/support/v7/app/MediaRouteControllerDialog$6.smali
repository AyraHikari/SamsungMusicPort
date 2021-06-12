.class Landroid/support/v7/app/MediaRouteControllerDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;->updateLayoutHeight(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

.field final synthetic val$animate:Z


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;Z)V
    .locals 0

    .line 593
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$6;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iput-boolean p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog$6;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 596
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$6;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 597
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$6;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-boolean v0, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupListAnimating:Z

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$6;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupListAnimationPending:Z

    goto :goto_0

    .line 600
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$6;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$6;->val$animate:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateLayoutHeightInternal(Z)V

    :goto_0
    return-void
.end method
