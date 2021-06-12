.class Landroid/support/v4/widget/SwipeRefreshLayout$4;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;->startScaleDownAnimation(Landroid/view/animation/Animation$AnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0

    .line 507
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 510
    iget-object p2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget p2, p2, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mStartingScale:F

    neg-float v0, v0

    mul-float v0, v0, p1

    add-float/2addr p2, v0

    .line 511
    iget-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$4;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    return-void
.end method
