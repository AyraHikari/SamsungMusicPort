.class Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;)V
    .locals 0

    .line 1949
    iput-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1$1;->this$2:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1952
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1$1;->this$2:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1$1;->this$2:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$800(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1953
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1$1;->this$2:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1$1;->this$2:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;

    iget-object v1, v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1200(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Z

    .line 1955
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1$1;->this$2:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1302(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;I)I

    .line 1956
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1$1;->this$2:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$800(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1$1;->this$2:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;->val$forwardDistance:I

    neg-int v5, v0

    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1$1;->this$2:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    .line 1957
    invoke-static {v0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$1000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x359

    const/16 v6, 0x359

    goto :goto_0

    :cond_1
    const/16 v0, 0x22d

    const/16 v6, 0x22d

    .line 1956
    :goto_0
    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1958
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1$1;->this$2:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1;->this$1:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslNumberPicker;->invalidate()V

    .line 1959
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1$1$1;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1$1$1;-><init>(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$4$1$1;)V

    const-wide/16 v2, 0x359

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
