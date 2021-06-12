.class Landroid/support/design/widget/TabLayout$TabView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TabLayout$TabView;->showMainTabTouchBackground(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/design/widget/TabLayout$TabView;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout$TabView;)V
    .locals 0

    .line 1889
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$TabView$1;->this$1:Landroid/support/design/widget/TabLayout$TabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .line 1900
    new-instance p1, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1901
    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1903
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x190

    .line 1904
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1905
    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1906
    invoke-virtual {p1, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1908
    iget-object p1, p0, Landroid/support/design/widget/TabLayout$TabView$1;->this$1:Landroid/support/design/widget/TabLayout$TabView;

    invoke-static {p1}, Landroid/support/design/widget/TabLayout$TabView;->access$400(Landroid/support/design/widget/TabLayout$TabView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

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
