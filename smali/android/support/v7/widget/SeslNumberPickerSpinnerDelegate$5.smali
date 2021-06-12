.class Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0

    .line 1993
    iput-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1996
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1802(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;F)F

    .line 1997
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$5;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    return-void
.end method
