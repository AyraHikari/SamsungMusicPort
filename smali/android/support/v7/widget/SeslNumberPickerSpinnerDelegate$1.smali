.class Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;-><init>(Landroid/support/v7/widget/SeslNumberPicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
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

    .line 609
    iput-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 613
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->setEditTextMode(Z)V

    .line 614
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 616
    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 617
    iget-object p2, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$1;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2, p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$100(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;Landroid/view/View;)V

    :goto_0
    return-void
.end method
