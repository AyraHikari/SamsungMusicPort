.class Landroid/support/v7/widget/SeslAbsSeekBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SeslAbsSeekBar;->initMuteAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslAbsSeekBar;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslAbsSeekBar;)V
    .locals 0

    .line 1766
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar$1;->this$0:Landroid/support/v7/widget/SeslAbsSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1769
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar$1;->this$0:Landroid/support/v7/widget/SeslAbsSeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Landroid/support/v7/widget/SeslAbsSeekBar;->access$002(Landroid/support/v7/widget/SeslAbsSeekBar;I)I

    .line 1770
    iget-object p1, p0, Landroid/support/v7/widget/SeslAbsSeekBar$1;->this$0:Landroid/support/v7/widget/SeslAbsSeekBar;

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsSeekBar$1;->this$0:Landroid/support/v7/widget/SeslAbsSeekBar;

    invoke-static {v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->access$000(Landroid/support/v7/widget/SeslAbsSeekBar;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslAbsSeekBar;->onSlidingRefresh(I)V

    return-void
.end method
