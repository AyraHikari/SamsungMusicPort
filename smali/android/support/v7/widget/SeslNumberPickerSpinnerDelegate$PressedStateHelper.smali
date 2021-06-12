.class Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0

    .line 2725
    iput-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2729
    iput p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->MODE_PRESS:I

    const/4 p1, 0x2

    .line 2730
    iput p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 2

    .line 2753
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    const/4 v0, 0x1

    .line 2754
    iput v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    .line 2755
    iput p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    .line 2756
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public buttonTapped(I)V
    .locals 1

    .line 2760
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    const/4 v0, 0x2

    .line 2761
    iput v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    .line 2762
    iput p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    .line 2763
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/SeslNumberPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancel()V
    .locals 5

    .line 2736
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->getRight()I

    move-result v0

    .line 2737
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getBottom()I

    move-result v1

    const/4 v2, 0x0

    .line 2739
    iput v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    .line 2740
    iput v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    .line 2741
    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v3, p0}, Landroid/support/v7/widget/SeslNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2742
    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2800(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2743
    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3, v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2802(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    .line 2744
    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v4, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v4

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    .line 2746
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2747
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3002(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    .line 2748
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v1, v2, v2, v0, v3}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 7

    .line 2768
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->getRight()I

    move-result v0

    .line 2769
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->getBottom()I

    move-result v1

    .line 2771
    iget v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mMode:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 2785
    :pswitch_0
    iget v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    .line 2795
    :pswitch_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2796
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    .line 2797
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v5, v2

    .line 2796
    invoke-virtual {v1, p0, v5, v6}, Landroid/support/v7/widget/SeslNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2799
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-static {v1, v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3002(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    .line 2800
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v2

    invoke-virtual {v1, v4, v4, v0, v2}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2787
    :pswitch_2
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2800(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2788
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    .line 2789
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v5

    int-to-long v5, v5

    .line 2788
    invoke-virtual {v2, p0, v5, v6}, Landroid/support/v7/widget/SeslNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2791
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v5, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v5}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2800(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v5

    xor-int/2addr v3, v5

    invoke-static {v2, v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2802(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    .line 2792
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2773
    :pswitch_3
    iget v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->mManagedButton:I

    packed-switch v2, :pswitch_data_2

    goto :goto_0

    .line 2779
    :pswitch_4
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3002(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    .line 2780
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v2

    invoke-virtual {v1, v4, v4, v0, v2}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2775
    :pswitch_5
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2, v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2802(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    .line 2776
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    iget-object v3, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v3}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$2900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v3

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate(IIII)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
