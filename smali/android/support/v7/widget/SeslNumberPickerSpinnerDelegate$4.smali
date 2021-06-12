.class Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->startAnimation(ILandroid/support/v7/widget/SeslAnimationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

.field final synthetic val$delay:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;I)V
    .locals 0

    .line 1931
    iput-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iput p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->val$delay:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1934
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$500(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1935
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$602(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    return-void

    .line 1939
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$702(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Z)Z

    .line 1940
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$900(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$802(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Landroid/widget/Scroller;

    .line 1941
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$500(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$500(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    neg-int v0, v0

    .line 1942
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$500(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    .line 1943
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$500(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x401599999999999aL    # 5.4

    mul-double v2, v2, v4

    double-to-int v0, v2

    .line 1944
    :goto_2
    iget-object v2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->scrollBy(II)V

    .line 1945
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    .line 1946
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;

    invoke-direct {v2, p0, v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;-><init>(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;I)V

    iget v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->val$delay:I

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
