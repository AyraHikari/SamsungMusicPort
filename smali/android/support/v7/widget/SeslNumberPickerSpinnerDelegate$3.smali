.class Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->showSoftInputForWindowFocused()V
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

    .line 1595
    iput-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$3;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1598
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$3;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    .line 1599
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 1600
    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$3;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$400(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$3;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$3;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    .line 1601
    invoke-static {v1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1602
    iget-object v0, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$3;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Landroid/support/v7/widget/SeslNumberPicker;

    new-instance v1, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$3$1;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$3$1;-><init>(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$3;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/SeslNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
