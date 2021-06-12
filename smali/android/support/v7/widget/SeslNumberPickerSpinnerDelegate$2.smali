.class Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 621
    iput-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$2;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 624
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-nez p2, :cond_0

    .line 625
    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    .line 626
    iget-object p1, p0, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate$2;->this$0:Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;->access$200(Landroid/support/v7/widget/SeslNumberPickerSpinnerDelegate;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
