.class Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableLayerRunnable"
.end annotation


# instance fields
.field final mChildView:Landroid/view/View;

.field final synthetic this$0:Landroid/support/v4/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 0

    .line 1630
    iput-object p1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1631
    iput-object p2, p0, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->mChildView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1636
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->mChildView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    if-ne v0, v1, :cond_0

    .line 1637
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->mChildView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1639
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->mChildView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->mChildView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;

    iget-object v1, v1, Landroid/support/v4/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 1642
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SlidingPaneLayout$DisableLayerRunnable;->this$0:Landroid/support/v4/widget/SlidingPaneLayout;

    iget-object v0, v0, Landroid/support/v4/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
