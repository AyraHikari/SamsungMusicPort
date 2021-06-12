.class Landroid/support/v7/widget/SwitchCompat$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SwitchCompat;->animateThumbToCheckedState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SwitchCompat;

.field final synthetic val$newCheckedState:Z


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SwitchCompat;Z)V
    .locals 0

    .line 1075
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat$2;->this$0:Landroid/support/v7/widget/SwitchCompat;

    iput-boolean p2, p0, Landroid/support/v7/widget/SwitchCompat$2;->val$newCheckedState:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1081
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat$2;->this$0:Landroid/support/v7/widget/SwitchCompat;

    iget-object v0, v0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    if-ne v0, p1, :cond_1

    .line 1083
    iget-object p1, p0, Landroid/support/v7/widget/SwitchCompat$2;->this$0:Landroid/support/v7/widget/SwitchCompat;

    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat$2;->val$newCheckedState:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    .line 1084
    iget-object p1, p0, Landroid/support/v7/widget/SwitchCompat$2;->this$0:Landroid/support/v7/widget/SwitchCompat;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;

    :cond_1
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
